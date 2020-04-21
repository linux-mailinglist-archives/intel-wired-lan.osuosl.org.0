Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id B844F1B2895
	for <lists+intel-wired-lan@lfdr.de>; Tue, 21 Apr 2020 15:54:26 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by silver.osuosl.org (Postfix) with ESMTP id 6229321541;
	Tue, 21 Apr 2020 13:54:25 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id LbdTv7NNWIXB; Tue, 21 Apr 2020 13:54:25 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by silver.osuosl.org (Postfix) with ESMTP id 6EFE722234;
	Tue, 21 Apr 2020 13:54:23 +0000 (UTC)
X-Original-To: intel-wired-lan@osuosl.org
Delivered-To: intel-wired-lan@osuosl.org
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 8243F1BF34E
 for <intel-wired-lan@osuosl.org>; Tue, 21 Apr 2020 13:54:22 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by whitealder.osuosl.org (Postfix) with ESMTP id 7D78C86AEE
 for <intel-wired-lan@osuosl.org>; Tue, 21 Apr 2020 13:54:22 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id hxgYX-VZEVAO for <intel-wired-lan@osuosl.org>;
 Tue, 21 Apr 2020 13:54:19 +0000 (UTC)
X-Greylist: delayed 00:16:26 by SQLgrey-1.7.6
Received: from tara.camperquake.de (tara.camperquake.de [89.238.65.78])
 by whitealder.osuosl.org (Postfix) with ESMTPS id 5B8DE8160B
 for <intel-wired-lan@osuosl.org>; Tue, 21 Apr 2020 13:54:18 +0000 (UTC)
Received: from [10.200.21.254] (helo=shell-202.tara.dn.lalufu.net)
 by tara.camperquake.de with esmtpsa (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256)
 (Exim 4.92.3) (envelope-from <ralf@camperquake.de>)
 id 1jQt5w-0005b6-3x
 for intel-wired-lan@osuosl.org; Tue, 21 Apr 2020 13:37:48 +0000
Received: from sun by shell-202.tara.dn.lalufu.net with local (Exim 4.92.3)
 (envelope-from <ralf@camperquake.de>) id 1jQt5t-006ero-R7
 for intel-wired-lan@osuosl.org; Tue, 21 Apr 2020 13:37:45 +0000
Date: Tue, 21 Apr 2020 13:37:45 +0000
From: Ralf Ertzinger <ralf@camperquake.de>
To: intel-wired-lan@osuosl.org
Message-ID: <20200421133745.GA1557688@shell-202.tara.dn.lalufu.net>
MIME-Version: 1.0
Content-Disposition: inline
X-camperquake.de-Received: 10.200.21.254
Subject: [Intel-wired-lan] i350 not coming out of D3 when link should be
 reestablished
X-BeenThere: intel-wired-lan@osuosl.org
X-Mailman-Version: 2.1.29
Precedence: list
List-Id: Intel Wired Ethernet Linux Kernel Driver Development
 <intel-wired-lan.osuosl.org>
List-Unsubscribe: <https://lists.osuosl.org/mailman/options/intel-wired-lan>, 
 <mailto:intel-wired-lan-request@osuosl.org?subject=unsubscribe>
List-Archive: <http://lists.osuosl.org/pipermail/intel-wired-lan/>
List-Post: <mailto:intel-wired-lan@osuosl.org>
List-Help: <mailto:intel-wired-lan-request@osuosl.org?subject=help>
List-Subscribe: <https://lists.osuosl.org/mailman/listinfo/intel-wired-lan>,
 <mailto:intel-wired-lan-request@osuosl.org?subject=subscribe>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

Hi,

I have a Supermicro board (M11SDV-4C-LN4F) which has one (or four? not
sure) i350 network cards, breaking out into four 1GB RJ45 ports:

03:00.0 Ethernet controller: Intel Corporation I350 Gigabit Network
Connection (rev 01)
03:00.1 Ethernet controller: Intel Corporation I350 Gigabit Network
Connection (rev 01)
03:00.2 Ethernet controller: Intel Corporation I350 Gigabit Network
Connection (rev 01)
03:00.3 Ethernet controller: Intel Corporation I350 Gigabit Network
Connection (rev 01)

I'm running fedora kernels, currently 5.5.17-200.fc31.x86_64.

The cards are driven by the igb driver.

When enabling PCIe powersaving by setting ATTR{power/control}="auto"
through udev, I observe the following:

- Interfaces that have no link when the driver is loaded are unable to
  establish link when a cable is inserted. The lights flicker, but no
  link establishment takes place

- Interfaces that have no link when the driver is loaded show up in "ip
  link show", but cannot be configured:

  # ip addr del 192.168.1.1/24 dev eno1
  RTNETLINK answers: Cannot assign requested address

- Interfaces that have no link when the driver is loaded cannot be
  inspected with ethtool:

  # ethtool -t eno1
  Cannot get strings: No such device

- Interfaces that have link when the driver is loaded work, but cannot
  regain link when it's lost.

- Reading the temperature sensor via /sys/class/hwmon results in a
  reading of 255 degrees:

  # cat /sys/class/hwmon/hwmon0/name 
  i350bb
  # cat /sys/class/hwmon/hwmon0/temp1_input 
  255000

If I leave ATTR{power/control}="on", everything works fine.

Is this expected behaviour?

If any further information/logs/output is required please just ask.
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
