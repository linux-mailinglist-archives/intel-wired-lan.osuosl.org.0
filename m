Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [IPv6:2605:bc80:3010::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 506567EE6F4
	for <lists+intel-wired-lan@lfdr.de>; Thu, 16 Nov 2023 19:43:47 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id 7ED6541CE9;
	Thu, 16 Nov 2023 18:43:45 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 7ED6541CE9
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1700160225;
	bh=v6+Lv0fSIug1z8616VvjLT27w1yCdWvOFBtwvCVN1Ng=;
	h=Date:From:To:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:Cc:From;
	b=LNTSiL/Hh2ulfA52R0wfl4MTUTJJEmIZy9Qzw2l2dx3hDbDqgECq3Y5bjrqo3BA13
	 qQ5V33l5wdev5POisFuo/23nICnFd0+sxyG5ObYKfyN2bhgFniJ9Jx5zxtNotA+8ZF
	 HAVLemNto4v0Y3JBTkYUkdZEwKpoaMxFp05LM8eFICfjtaT67zEM7OZYnXao7lDPZi
	 RWGgiVUQhD/Dcr0yXYGK0cJjqgPfpqIJ2jvl5q8UkJ3pfmSrLNee5ZKG0R3F6drBH0
	 rFesAjJqQ7JbA2BOG0WqrdqU1m0FXEn0+jgwa3MJ3LsmsnySE/8FNZrZAeOL4xKIzG
	 l5jLOYd6aJvQQ==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id QqhJYhAhWSb0; Thu, 16 Nov 2023 18:43:44 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id 4A4514150C;
	Thu, 16 Nov 2023 18:43:43 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 4A4514150C
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id C66881BF408
 for <intel-wired-lan@lists.osuosl.org>; Thu, 16 Nov 2023 18:43:38 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 9DBA34265A
 for <intel-wired-lan@lists.osuosl.org>; Thu, 16 Nov 2023 18:43:38 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 9DBA34265A
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id rtzo1xXKmKf5 for <intel-wired-lan@lists.osuosl.org>;
 Thu, 16 Nov 2023 18:43:37 +0000 (UTC)
Received: from mail-pl1-x634.google.com (mail-pl1-x634.google.com
 [IPv6:2607:f8b0:4864:20::634])
 by smtp4.osuosl.org (Postfix) with ESMTPS id A3DFF41C21
 for <intel-wired-lan@lists.osuosl.org>; Thu, 16 Nov 2023 18:43:37 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org A3DFF41C21
Received: by mail-pl1-x634.google.com with SMTP id
 d9443c01a7336-1cc68c1fac2so10515035ad.0
 for <intel-wired-lan@lists.osuosl.org>; Thu, 16 Nov 2023 10:43:37 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1700160217; x=1700765017;
 h=content-transfer-encoding:mime-version:message-id:subject:cc:to
 :from:date:x-gm-message-state:from:to:cc:subject:date:message-id
 :reply-to;
 bh=UQB7vtE+LwaYzRGRMYj7Z0IsvR+Cm+XbSvifd2xxhqw=;
 b=osuJ4VXKtN9QtQs0NWKjs/Pi0okskmgRDWEjeLsFrAAh8GlnAg31j1CnlAWiR0IApm
 NzuVRDbK9xeimpktFEgA4w3vwbNCJwb0Qpf8cKGL0uSpHDbSpWS+2beIFroHi+4XfiDV
 uxAhCjOOAn1ijDOV5Fk8P5VmVRy6JrZ8dRlfQ7erEm9D79o310lu8b3uuYVWk5BG1hFJ
 VhJOTVi5BVsq1L/ZjAFuUcrcslYlD0VukREZJGKE8F475OUDQkUBdlW621Mz1FWjRuDt
 rOB9vCUScRMaGqRRWVwLC2rcw1X27czhEutjjjHY2549uR6LQgLwoF5veHXXWFX9c2Qs
 humA==
X-Gm-Message-State: AOJu0YxL3Qr5Tl/G2kSugNne25lYreqyPvpI7e7Hyz2MSdwHtgftdUpj
 Ta5T2+FjM+UQsLqqlmAU4+4Xew==
X-Google-Smtp-Source: AGHT+IFKYdAtVn/G74Az/zDJvamc6HwQJ6xhsAo2BSWbbzMCan40ecvy/Yw3hxAP5V4mjj/GwHPRzg==
X-Received: by 2002:a17:902:e850:b0:1cc:5a65:c535 with SMTP id
 t16-20020a170902e85000b001cc5a65c535mr12003369plg.6.1700160216965; 
 Thu, 16 Nov 2023 10:43:36 -0800 (PST)
Received: from hermes.local (204-195-123-141.wavecable.com. [204.195.123.141])
 by smtp.gmail.com with ESMTPSA id
 u16-20020a170903125000b001c9d6923e7dsm9529785plh.222.2023.11.16.10.43.36
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 16 Nov 2023 10:43:36 -0800 (PST)
Date: Thu, 16 Nov 2023 10:43:34 -0800
From: Stephen Hemminger <stephen@networkplumber.org>
To: Jesse Brandeburg <jesse.brandeburg@intel.com>, Tony Nguyen
 <anthony.l.nguyen@intel.com>
Message-ID: <20231116104334.3ca31655@hermes.local>
MIME-Version: 1.0
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=networkplumber-org.20230601.gappssmtp.com; s=20230601; t=1700160217;
 x=1700765017; darn=lists.osuosl.org; 
 h=content-transfer-encoding:mime-version:message-id:subject:cc:to
 :from:date:from:to:cc:subject:date:message-id:reply-to;
 bh=UQB7vtE+LwaYzRGRMYj7Z0IsvR+Cm+XbSvifd2xxhqw=;
 b=TuFuhXBkdo7cu0m9Y90TlAr/SSQnbXHOSG6/XQ/7cikOdV12gQjPA/F/JQtEEUYUt7
 ANUymJnM7a6wQiVgn7+naRiVvYJle2tRlFFY+gJwiz63FzEVdUjGT/AlDIEKh3czqulj
 /u7eUbYOlwA6Kd8aCA5qGKjHc1KFg+L9DIcc70cSAdu2O2hPm/5Zc9wgG2vSnvcRRR8e
 +TrRmONaas/TnKzD20RBYUKbnyA230zdUI3AB5pjm8GJwSF20FIETiixRu4uGiGSPlg7
 9qvN6GHO5L6sUsVwJBfhJoiRPWKDev4aoGlhxN+1OtkAbmWLJS2KYdDbwbIYIJczrwNn
 xFNg==
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key) header.d=networkplumber-org.20230601.gappssmtp.com
 header.i=@networkplumber-org.20230601.gappssmtp.com header.a=rsa-sha256
 header.s=20230601 header.b=TuFuhXBk
Subject: [Intel-wired-lan] Lots of rx_long_byte_count errors
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
Cc: intel-wired-lan@lists.osuosl.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

I am using builtin NIC on my little Brix box and surprised to see lots
of byte count errors. Network seems a little sluggish at times.
Do use locally NFS mounted NAS for storing things like kernel trees.

$ lspci | grep Ethernet
00:1f.6 Ethernet controller: Intel Corporation Ethernet Connection (13) I219-V (rev 20)
ae:00.0 Ethernet controller: Intel Corporation Ethernet Controller I225-V (rev 01)

$ sudo ethtool -i enp174s0 
driver: igc
version: 6.5.0-4-amd64
firmware-version: 1045:740
expansion-rom-version: 
bus-info: 0000:ae:00.0
supports-statistics: yes
supports-test: yes
supports-eeprom-access: yes
supports-register-dump: yes
supports-priv-flags: yes

$ sudo ethtool -S enp174s0 | grep -v ': 0$'
NIC statistics:
     rx_packets: 729954
     tx_packets: 222554
     rx_bytes: 867670928
     tx_bytes: 69174803
     rx_broadcast: 5002
     tx_broadcast: 37
     rx_multicast: 11959
     tx_multicast: 934
     multicast: 11959
     tx_tcp_seg_good: 1687
     tx_flow_control_xon: 32
     tx_flow_control_xoff: 31
     rx_long_byte_count: 867670928
     tx_queue_0_packets: 22543
     tx_queue_0_bytes: 2712687
     tx_queue_1_packets: 4547
     tx_queue_1_bytes: 1486617
     tx_queue_2_packets: 103559
     tx_queue_2_bytes: 36988065
     tx_queue_3_packets: 14732
     tx_queue_3_bytes: 13193520
     rx_queue_0_packets: 112677
     rx_queue_0_bytes: 152437202
     rx_queue_1_packets: 91981
     rx_queue_1_bytes: 130521460
     rx_queue_2_packets: 231685
     rx_queue_2_bytes: 250398158
     rx_queue_3_packets: 11095
     rx_queue_3_bytes: 10376491
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
