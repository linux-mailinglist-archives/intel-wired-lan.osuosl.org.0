Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 87393857F4B
	for <lists+intel-wired-lan@lfdr.de>; Fri, 16 Feb 2024 15:27:04 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id 191F141C17;
	Fri, 16 Feb 2024 14:27:03 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id wpZMmEweESYP; Fri, 16 Feb 2024 14:27:02 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.34; helo=ash.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org BF69841C05
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1708093621;
	bh=BxYY5fyWyMqUxcijPERqC60kq0AgLVdhiPR0m9BonU0=;
	h=Date:From:To:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:From;
	b=fwMP6klvCFj50+C5hQG7v4pDLGMQd+yA37pCZYT5jBie0oHfrFVjurxgrwJZEOMH5
	 XruTdEgg+MKdnbg/sjC64CSHzAW9QR2N36f6bJY2+jzVG9G/pK3fiOzDbhaPVIf29U
	 HR9ulXY9l4S3X8rx+5+h75J/X0uuei4QWkQY2ImxiLm2LVD1xbZ3Wgm0JGvn+KBCQe
	 SZmxTAZUtJdJBn5s1Mo9+8REBSSDvsKOgB7Qbbc576UHAe+IJ9B0U1tlHA6QKJUz/a
	 eLoTsuY5zUbC8rKEkk5I9JaoZ7UaYO1bnl799wa+71pCI6GUuaiFBAI6M+AhW+I+4u
	 EMuRd5x8fMGtA==
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id BF69841C05;
	Fri, 16 Feb 2024 14:27:01 +0000 (UTC)
X-Original-To: intel-wired-lan@osuosl.org
Delivered-To: intel-wired-lan@osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id C66971BF29C
 for <intel-wired-lan@osuosl.org>; Fri, 16 Feb 2024 14:26:59 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id B0051611F3
 for <intel-wired-lan@osuosl.org>; Fri, 16 Feb 2024 14:26:59 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id c4Q1juNFZQbL for <intel-wired-lan@osuosl.org>;
 Fri, 16 Feb 2024 14:26:58 +0000 (UTC)
X-Greylist: delayed 455 seconds by postgrey-1.37 at util1.osuosl.org;
 Fri, 16 Feb 2024 14:26:57 UTC
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp3.osuosl.org 0CA83611E8
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 0CA83611E8
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=149.217.70.16;
 helo=smtp-out2.mpia-hd.mpg.de; envelope-from=kulas@mpia.de;
 receiver=<UNKNOWN> 
Received: from smtp-out2.mpia-hd.mpg.de (smtp-out2.mpia-hd.mpg.de
 [149.217.70.16])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 0CA83611E8
 for <intel-wired-lan@osuosl.org>; Fri, 16 Feb 2024 14:26:57 +0000 (UTC)
Received: from mailer.mpia-hd.mpg.de (mailer.mpia-hd.mpg.de [149.217.71.6])
 by smtp-out2.mpia-hd.mpg.de (Postfix) with ESMTPS id 2D42F13E31
 for <intel-wired-lan@osuosl.org>; Fri, 16 Feb 2024 15:19:20 +0100 (CET)
Received: from mailer.mpia-hd.mpg.de (localhost [127.0.0.1])
 by mailer.mpia-hd.mpg.de (Postfix) with ESMTP id 28E7810C6DBA;
 Fri, 16 Feb 2024 15:19:20 +0100 (CET)
X-Virus-Scanned: amavisd-new at mpia-hd.mpg.de
Received: from mailer.mpia-hd.mpg.de (mailer.mpia-hd.mpg.de [149.217.71.6]) by
 mailer.mpia-hd.mpg.de (Postfix) with ESMTPSA id E315110C6CB4; 
 Fri, 16 Feb 2024 15:19:19 +0100 (CET)
Message-ID: <7b655203-0dba-4531-956a-c63048f7de10@mpia.de>
Date: Fri, 16 Feb 2024 15:18:52 +0100
MIME-Version: 1.0
Content-Language: en-US
From: Martin Kulas <kulas@mpia.de>
To: intel-wired-lan@osuosl.org
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=mpia.de; h=
 content-transfer-encoding:content-type:content-type:subject
 :subject:from:from:content-language:mime-version:date:date
 :message-id:received; s=mailer201911; t=1708093159; x=
 1709907560; bh=vesy31USUSC8VhwFLQIoILPYd+pxzJJKRG3Etp1IGVY=; b=L
 WHkuAmS3YwsoUmry6u38V9rRwaCcnV+n32Uvgn+M4/dlUp57IpV0OcPwMhky64Q8
 AcpCZSyopoKjEsDBX66Cz5TLZrL8LE6yfwwZg+9ofeRN1+am+vcKM51ZdlbqHk0A
 ruyfDa7uYASumR7FGgNuY+7rO6X1t5ukwTWrbqXwKreozn+w7b2kSwq5rZ//0aA1
 eP4TZHLeOyUThrKbb9IpUahrT8v33oSwZggV78zInkTNhrRev44aWs52jPE1Oo5n
 mXHGHbdqGFiN2ozNvzicWqjlXz38KYiCjIvef6s4krsOp3E9b9CAiURK70nkI2Xn
 G4xfXOUigwl/NnggvZr5g==
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=mpia.de
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=mpia.de header.i=@mpia.de header.a=rsa-sha256
 header.s=mailer201911 header.b=LWHkuAmS
X-Mailman-Original-Authentication-Results: mailer.mpia-hd.mpg.de (amavisd-new); 
 dkim=pass (2048-bit key) reason="pass (just generated, assumed good)"
 header.d=mpia.de
Subject: [Intel-wired-lan] Intel E810-XXVDA2: Too high TX timestamp read
 latency
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
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

Hello Intel Wired LAN experts,


My time-sensitive user space application reads out
the hardware TX timestamp via poll() and recvmsg(MSG_ERRQUEUE).
On an Intel E810-XXVDA2 (for SFP),  it takes roughly 700 microseconds 
until the TX timestamp is available in user space (Linux 6.7.4).
This latency of 700 microseconds is far too high for my application.
For comparision,  on an Intel X550 card (Twisted pair),
my application retrieves the TX timestamp in roughly 30 microseconds
which is acceptable.


The output of ethtool of the tested E810-XXVDA2:

# ethtool -i enp65s0f1np1
driver: ice
version: 6.7.4
firmware-version: 4.40 0x8001c96c 1.3534.0
expansion-rom-version:
bus-info: 0000:41:00.1
supports-statistics: yes
supports-test: yes
supports-eeprom-access: yes
supports-register-dump: yes
supports-priv-flags: yes
#

When searching for a solution about this high latency TX timestamp read,
I found the following thread from 2022:

https://patchwork.ozlabs.org/project/intel-wired-lan/patch/20220802145757.273270-1-karol.kolacinski@intel.com/#2963591

Is this patch already in the current Linux Kernel 6.7.4 or is it pending?

Can you recommend anything else in order to reduce
the TX timestamp read latency?

If you know a better place for this issue,  please let me now!


Kind regards,
Martin
