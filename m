Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 1F3E51C2757
	for <lists+intel-wired-lan@lfdr.de>; Sat,  2 May 2020 19:55:57 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by whitealder.osuosl.org (Postfix) with ESMTP id 96E1B86852;
	Sat,  2 May 2020 17:55:55 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id PqppOBtk42Uq; Sat,  2 May 2020 17:55:55 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by whitealder.osuosl.org (Postfix) with ESMTP id 94EB686DB3;
	Sat,  2 May 2020 17:55:54 +0000 (UTC)
X-Original-To: intel-wired-lan@osuosl.org
Delivered-To: intel-wired-lan@osuosl.org
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id E1C521BF283
 for <intel-wired-lan@osuosl.org>; Sat,  2 May 2020 17:55:52 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by silver.osuosl.org (Postfix) with ESMTP id D127920445
 for <intel-wired-lan@osuosl.org>; Sat,  2 May 2020 17:55:52 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 1ByxLS4S88zS for <intel-wired-lan@osuosl.org>;
 Sat,  2 May 2020 17:55:50 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.7.6
Received: from tara.camperquake.de (tara.camperquake.de [89.238.65.78])
 by silver.osuosl.org (Postfix) with ESMTPS id 03ACE203F5
 for <intel-wired-lan@osuosl.org>; Sat,  2 May 2020 17:55:49 +0000 (UTC)
Received: from i126064.upc-i.chello.nl ([62.195.126.64]
 helo=faith.camperquake.de)
 by tara.camperquake.de with esmtpsa (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256)
 (Exim 4.92.3) (envelope-from <ralf@camperquake.de>)
 id 1jUwMb-0002Xp-BK
 for intel-wired-lan@osuosl.org; Sat, 02 May 2020 17:55:45 +0000
Received: from sun by faith.camperquake.de with local (Exim 4.92.3)
 (envelope-from <ralf@camperquake.de>) id 1jUwMX-0003UM-U4
 for intel-wired-lan@osuosl.org; Sat, 02 May 2020 19:55:42 +0200
Date: Sat, 2 May 2020 19:55:41 +0200
From: Ralf Ertzinger <ralf@camperquake.de>
To: intel-wired-lan@osuosl.org
Message-ID: <20200502175541.GB7062@faith.camperquake.de>
References: <20200421133745.GA1557688@shell-202.tara.dn.lalufu.net>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200421133745.GA1557688@shell-202.tara.dn.lalufu.net>
X-camperquake.de-Received: 62.195.126.64
Subject: Re: [Intel-wired-lan] i350 not coming out of D3 when link should be
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

On Tue, Apr 21, 2020 at 01:37:45PM +0000, Ralf Ertzinger wrote:

> I have a Supermicro board (M11SDV-4C-LN4F) which has one (or four? not
> sure) i350 network cards, breaking out into four 1GB RJ45 ports:

is this the right mailing list for these sort of issues? If not, where
should I bring this up?
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
