Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 2D4D27E293F
	for <lists+intel-wired-lan@lfdr.de>; Mon,  6 Nov 2023 16:59:56 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id 99BE84150C;
	Mon,  6 Nov 2023 15:59:54 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 99BE84150C
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1699286394;
	bh=fQwW+tyqxPgvwjFmETNpi/7koZObKh1GGQF2hpUngf0=;
	h=From:Date:To:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:From;
	b=oVgqB7Rn2aeiVCNSu/0HczU2D2WlKzAbscHmy/P0Hu8j/YQAVnn3BMKBlWERpJET8
	 cjvTMNwX/SV4AFYXDtQDjjd5QlIHIiKfoIWptL6Wu+qyM1nuHVx8iMZProSAf3CMRG
	 bv3Xu/yUDx5f+uwgs/CzlIv/a3KVX1jDIGcppZvPjE3vaIYkoPxmh1v5SFHcmHw9py
	 2u0E4tvijahOiqZtapGCMCqnR8kEfffH3FNnRWTzUlfX33fv5bypNOa102hqE1OGXx
	 bHnOWD8QbjQO83qM24sApG8LeIEg640mHj8sH1e0/EWvMTXXXiaFASlgzkqfXURRLG
	 0FWi4VqeHPV0A==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id RfANkQVlaM5f; Mon,  6 Nov 2023 15:59:53 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id 25CB04149C;
	Mon,  6 Nov 2023 15:59:52 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 25CB04149C
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 0DAE11BF21A
 for <intel-wired-lan@lists.osuosl.org>; Sat,  4 Nov 2023 17:48:24 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id D947282277
 for <intel-wired-lan@lists.osuosl.org>; Sat,  4 Nov 2023 17:48:23 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org D947282277
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id lK3fp2PDFazY for <intel-wired-lan@lists.osuosl.org>;
 Sat,  4 Nov 2023 17:48:23 +0000 (UTC)
Received: from mail-ed1-x52b.google.com (mail-ed1-x52b.google.com
 [IPv6:2a00:1450:4864:20::52b])
 by smtp1.osuosl.org (Postfix) with ESMTPS id F05BF82275
 for <intel-wired-lan@lists.osuosl.org>; Sat,  4 Nov 2023 17:48:22 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org F05BF82275
Received: by mail-ed1-x52b.google.com with SMTP id
 4fb4d7f45d1cf-5406c099cebso5057065a12.2
 for <intel-wired-lan@lists.osuosl.org>; Sat, 04 Nov 2023 10:48:22 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1699120101; x=1699724901;
 h=to:subject:message-id:date:from:mime-version:x-gm-message-state
 :from:to:cc:subject:date:message-id:reply-to;
 bh=Pa7eeV9AcNNxuywWOrtbmSMVpU6x4fPaTeJzl1/5UYQ=;
 b=UoUFz+CqKY/jNi/dUsurS1BSMnD28npOw0TJd1YCATGk2cltw73zAD9spF9hs0nNdO
 SoL8UL9Wo/BkDo1lHXhWrChMFFrOqZRhQ6lSOcrUyo1uF3XAxNdtq8HyD4RxM6LLJqLa
 5m4lFOtizjGjeOn3CBvDk+mgfG5k4Vw5I87Zw/96ThClZl9QVHUpaezRH1MrGNMRhE/g
 AndsZgOay3JUsiGLcEPcUI2qsA80mP2pJhyLtuNGN6pxBNFrjjnaGeqRek/85qlyWNpP
 xfP4ggrDy3fXNtAeDsvnd006lc57uNM21OWQxvUsLH94VAFZu0S2R7H5BXf7Xp6Cqc4i
 cl/w==
X-Gm-Message-State: AOJu0YwqAyBupt3d1+EgrEV5U8YaZ7589J41wjNliRj3t1iju1cgly67
 lvIL7Zwkf/5XEip2wuY8pnDaR+cyrUmy03sow/eW2JSKelBLjg==
X-Google-Smtp-Source: AGHT+IHzjO050UB5ArxfdglVeEQY6p3ipQmIHSFP4KFs2rcWs9N0fGqpeAL+nhpGdqUVS7LsHa/3aYYO2gU7X33BO6E=
X-Received: by 2002:a50:9e24:0:b0:53f:a017:7526 with SMTP id
 z33-20020a509e24000000b0053fa0177526mr18063385ede.40.1699120100700; Sat, 04
 Nov 2023 10:48:20 -0700 (PDT)
MIME-Version: 1.0
From: Manuel Lauss <manuel.lauss@gmail.com>
Date: Sat, 4 Nov 2023 18:47:44 +0100
Message-ID: <CAOLZvyGSi9jorwKfcpWrnv0=oYf-vTxY_K-mUecQTir3HNyNHw@mail.gmail.com>
To: intel-wired-lan@lists.osuosl.org
X-Mailman-Approved-At: Mon, 06 Nov 2023 15:59:46 +0000
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=gmail.com; s=20230601; t=1699120101; x=1699724901; darn=lists.osuosl.org;
 h=to:subject:message-id:date:from:mime-version:from:to:cc:subject
 :date:message-id:reply-to;
 bh=Pa7eeV9AcNNxuywWOrtbmSMVpU6x4fPaTeJzl1/5UYQ=;
 b=V/oHWRoXnPU0pU6Q3E81TfqnUwXOTlc/m+rUwzdGYHqJLGeJ2CST4ZlivLmwh2vWjd
 5cvMqnIn7gUAXfYYmGnO/olsJhbGigm87+rhFUobDuV+SGbMWLOonJxTK9goEevde10g
 wwyLmCEF8NHWWleBANUXvhaM5st6deBP5sNHBYx7O6R/ynQZ8QOxWcXraCXoPmsdSAp7
 m5q0xDz9C2laJ8PnBj+04uwHB4j9ngYOpBTAXoH/2GXqYQQ0b1jDnvmAGQyu9u91pjkE
 If1dRIHnHiYyfDiqGtYk4FG/u5pg/FelacSv1FSEyetR4QLw8HOFdnUB3YLs5QaZqiJU
 9uMg==
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com
 header.a=rsa-sha256 header.s=20230601 header.b=V/oHWRoX
Subject: [Intel-wired-lan] linux-6.5.8: i40e (X710) randomly stops working
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

Hello,

Linux-6.5.8. X710 Network card, attached via 1meter DAC cable to an
Ubiquiti Aggregation switch (10Gbe).
Networking is fine, throughput as expected,  but the X710 stops
forwarding packets after ~20 hours.
I have to "ifconfig enp1s0f1 down ; sleep 1; ifconfig enp1s0f1 up" to
get it working again;
pulling and reinserting the DAC cable does not help.

Interface is part of a linux ethernet bridge device (br0), the X710 is
used purely as a dumb fast
ethernet device, no advances features enabled.

Any ideas what could be wrong?

Thanks!
     Manuel

[    1.327924] i40e: Intel(R) Ethernet Connection XL710 Network Driver
[    1.327925] i40e: Copyright (c) 2013 - 2019 Intel Corporation.
[    1.341521] i40e 0000:01:00.0: fw 6.0.48442 api 1.7 nvm 6.01
0x800035cf 1.1747.0 [8086:1572] [8086:0007]
[    1.405557] i40e 0000:01:00.0: MAC address: 40:a6:b7:b9:d6:28
[    1.414463] i40e 0000:01:00.0 eth0: NIC Link is Up, 10 Gbps Full
Duplex, Flow Control: RX/TX
[    1.414634] i40e 0000:01:00.0: PCI-Express: Speed 8.0GT/s Width x8
[    1.423363] i40e 0000:01:00.0: Features: PF-id[0] VSIs: 66 QP: 8
RSS FD_ATR FD_SB NTUPLE VxLAN Geneve VEPA
[    1.435506] i40e 0000:01:00.1: fw 6.0.48442 api 1.7 nvm 6.01
0x800035cf 1.1747.0 [8086:1572] [8086:0007]
[    1.499379] i40e 0000:01:00.1: MAC address: 40:a6:b7:b9:d6:29
[    1.503350] i40e 0000:01:00.1: PCI-Express: Speed 8.0GT/s Width x8
[    1.503796] i40e 0000:01:00.1: Features: PF-id[1] VSIs: 66 QP: 8
RSS FD_ATR FD_SB NTUPLE VxLAN Geneve VEPA
[    3.405496] i40e 0000:01:00.1 enp1s0f1: renamed from eth1
[    3.414522] i40e 0000:01:00.0 enp1s0f0: renamed from eth0
[    3.447993] i40e 0000:01:00.1 enp1s0f1: entered allmulticast mode
[    3.453846] i40e 0000:01:00.1 enp1s0f1: entered promiscuous mode
[    3.455960] i40e 0000:01:00.1: entering allmulti mode.
[    3.457363] i40e 0000:01:00.0 enp1s0f0: entered allmulticast mode
[    3.457396] i40e 0000:01:00.0 enp1s0f0: entered promiscuous mode
[    3.458964] i40e 0000:01:00.0: entering allmulti mode.

[284945.387974] i40e 0000:01:00.0: VSI seid 390 Rx ring 1 disable timeout
[284945.388260] i40e 0000:01:00.0: VSI seid 390 Rx ring 2 disable timeout
[284945.388538] i40e 0000:01:00.0: VSI seid 390 Rx ring 3 disable timeout
[284948.609618] i40e 0000:01:00.0: entering allmulti mode.
[344837.196104] i40e 0000:01:00.0: VSI seid 390 Rx ring 1 disable timeout
[344837.196399] i40e 0000:01:00.0: VSI seid 390 Rx ring 2 disable timeout
[344837.196683] i40e 0000:01:00.0: VSI seid 390 Rx ring 3 disable timeout
[344842.966942] i40e 0000:01:00.0: entering allmulti mode.
[451897.400889] i40e 0000:01:00.0: VSI seid 390 Rx ring 1 disable timeout
[451897.401176] i40e 0000:01:00.0: VSI seid 390 Rx ring 2 disable timeout
[451897.401456] i40e 0000:01:00.0: VSI seid 390 Rx ring 3 disable timeout
[451901.231805] i40e 0000:01:00.0: entering allmulti mode.
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
