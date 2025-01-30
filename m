Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id BF540A2328E
	for <lists+intel-wired-lan@lfdr.de>; Thu, 30 Jan 2025 18:11:21 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id BC35461037;
	Thu, 30 Jan 2025 17:11:18 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id V294mNyoCLC0; Thu, 30 Jan 2025 17:11:18 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 04F7660F72
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1738257078;
	bh=5YUNcQuFjCdY2tr4tQy6ORB+JbZR3f+0yGhHMOkK28M=;
	h=Date:From:To:Cc:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:From;
	b=Hxhqv/+FxdtWlAEHpN2BM7M3Q1WahLYGMOeKl6vfDwccDMb1TXoVu7gVRTZYli8Ke
	 U5w/DMtXdGeBdPPUoHNBPi9EPVAVgbX7ICCwrxo6glvrgPfkpc8vx32Yc3k+F93nlr
	 yn4XiTiVV2tmXKgAxICD7/icRvVZE8LzKUgWQsG3C+zxAISx4Lo85s6JsrYJlcP8Mf
	 JvYtTk2zfTxLtH978XUa8K27gaXausbgIOmetFFw5Diqsoy19NEr2QOqgkdA4lKAvh
	 lHrjnRpgj6XLrqXM0ucUW+2+cHjCOFDtGdGi4isHlnszpHrTdbBWZTT6VH+Stic5dT
	 sX713XxW0qpUA==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp3.osuosl.org (Postfix) with ESMTP id 04F7660F72;
	Thu, 30 Jan 2025 17:11:18 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
 by lists1.osuosl.org (Postfix) with ESMTP id 66A07128
 for <intel-wired-lan@lists.osuosl.org>; Thu, 30 Jan 2025 17:11:16 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 538F4426AE
 for <intel-wired-lan@lists.osuosl.org>; Thu, 30 Jan 2025 17:11:16 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id yFkq_5r8yYXv for <intel-wired-lan@lists.osuosl.org>;
 Thu, 30 Jan 2025 17:11:14 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom;
 client-ip=2607:f8b0:4864:20::62c; helo=mail-pl1-x62c.google.com;
 envelope-from=stephen@networkplumber.org; receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp4.osuosl.org 7C6CD426B9
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 7C6CD426B9
Received: from mail-pl1-x62c.google.com (mail-pl1-x62c.google.com
 [IPv6:2607:f8b0:4864:20::62c])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 7C6CD426B9
 for <intel-wired-lan@lists.osuosl.org>; Thu, 30 Jan 2025 17:11:14 +0000 (UTC)
Received: by mail-pl1-x62c.google.com with SMTP id
 d9443c01a7336-21680814d42so17905695ad.2
 for <intel-wired-lan@lists.osuosl.org>; Thu, 30 Jan 2025 09:11:14 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1738257074; x=1738861874;
 h=content-transfer-encoding:mime-version:message-id:subject:cc:to
 :from:date:x-gm-message-state:from:to:cc:subject:date:message-id
 :reply-to;
 bh=5YUNcQuFjCdY2tr4tQy6ORB+JbZR3f+0yGhHMOkK28M=;
 b=O4pL9faaQqyc9UOExlqvQmviio3LZogiMdVTQPRQe1PdhFoCLOgu3daEXX/Cxzu5Em
 g3k7KITgnsKqmmLKqAs1WmoiUb4ecfsGaEIpmsY9wm7Uw5THnDptbc8Ym9fTxnEFP3qW
 KZWkxwoFYD2SZ7T6b74EPLpYYOGRiCNPjComsLSUYnwVci1kJMpw3SuPo20AhAmitGuI
 6L3ONCji/s7I51xqd4WTZodomElfMeS7pmBtDx6BoNN+tE8IXWvUYd+yGaeblAPfBlk+
 nOzXc7UPS+JkIXpLSBMXgQ2FZrjFwY8uIE+vKAWW7PdHio7jRKhwuDBTBLu41lbto+6m
 kmeA==
X-Gm-Message-State: AOJu0Yw99npt5ik+68Jw2dhGIrEQbtPmqF6Zf/LVFMGqdgfQEifhxIxd
 9Jkc589jOpBkLXQ51VnSJJiBk2BM7JQPLXobsUKNt4FXU3/4MOR3A5myFdlMe00=
X-Gm-Gg: ASbGncsSGm4RHZvMh9Tv52J6uLYTYY9q/xk4gu9iTJ2ZswNgYW8ML68g0wK9TdcPmYx
 XSmzSKmXhjPVjFuUe9w3a4yzGylUCKffLl+CcMYBkVxUMJ36sbDGhwg8Ubp77e9oIR+LaUR7sue
 3HqAhx8qNtACbAXxtdcUkGdiCr2IrFloNY1zQdOsXoXNK1RTkFtliG7M4Garjnoq2a5s2Vhwt4P
 jGgWHUJJtSvNN+0Q4HPi4bCEEvuicQ7mO9fC61sYxZwauNtHVmK13L5GxC/ntzlOHUlLi3dZEvl
 Ghdrdi8EuOuHv5dGCgF4vDExzAHpsEg6H6pfrYiujKJGUQQomdGXdJu9F7V3JSfPaz01
X-Google-Smtp-Source: AGHT+IEhur2L8e6mWkMNPL7ZudCZ00vsRNGt7ncwapulJk8hUhDYwald1k4vpLp3fsIEn1vwhXTBrQ==
X-Received: by 2002:a17:902:ec91:b0:21c:15b3:e39f with SMTP id
 d9443c01a7336-21dd7ddfedamr104507825ad.39.1738257073387; 
 Thu, 30 Jan 2025 09:11:13 -0800 (PST)
Received: from hermes.local (204-195-96-226.wavecable.com. [204.195.96.226])
 by smtp.gmail.com with ESMTPSA id
 d9443c01a7336-21de31ee73asm16264945ad.36.2025.01.30.09.11.12
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 30 Jan 2025 09:11:13 -0800 (PST)
Date: Thu, 30 Jan 2025 09:11:11 -0800
From: Stephen Hemminger <stephen@networkplumber.org>
To: anthony.l.nguyen@intel.com, jesse.brandeburg@intel.com
Cc: intel-wired-lan@lists.osuosl.org
Message-ID: <20250130091111.46358882@hermes.local>
MIME-Version: 1.0
Content-Type: text/plain; charset=US-ASCII
Content-Transfer-Encoding: 7bit
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=networkplumber-org.20230601.gappssmtp.com; s=20230601; t=1738257074;
 x=1738861874; darn=lists.osuosl.org; 
 h=content-transfer-encoding:mime-version:message-id:subject:cc:to
 :from:date:from:to:cc:subject:date:message-id:reply-to;
 bh=5YUNcQuFjCdY2tr4tQy6ORB+JbZR3f+0yGhHMOkK28M=;
 b=GUcMTjih7DL/Qt23gOIbyYJzPUuKRUKM0eRcZ0wG84/yXrMJSyF2R3Duvn6NKbmGKG
 eAPq3z3yXpMEiW/7YfmbN+3V+4bZsfI2qwRuJvPCRV5ALqpwawE2rjTkM0GeqKfEOXro
 zqM1C4JehwJ3gO+dwKtHewm6YDHi4Rf+JVC94M2dYrTnfgnPoTElSDUyFGITytEwMM0L
 BDViAxq5awd5EWWHU6h5RJGTuhBx0QgnLkmGVISbti7nvl+sjafao8uXjq2cBxTInLBu
 tmIg4iVievbZ7y70OFZyVSDJwfi5dcQYl9QPxXuSDPpAp4YV3FqFSE8GwlsYk/ht1jWd
 It3g==
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dmarc=pass (p=quarantine dis=none)
 header.from=networkplumber.org
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=networkplumber-org.20230601.gappssmtp.com
 header.i=@networkplumber-org.20230601.gappssmtp.com header.a=rsa-sha256
 header.s=20230601 header.b=GUcMTjih
Subject: [Intel-wired-lan] suspend/resume broken of igc driver broken on 6.12
X-BeenThere: intel-wired-lan@osuosl.org
X-Mailman-Version: 2.1.30
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

I am using:

5a:00.0 Ethernet controller: Intel Corporation Ethernet Controller I226-LM (rev 04)
	Subsystem: Intel Corporation Device 0000
	Flags: bus master, fast devsel, latency 0, IRQ 19, IOMMU group 20
	Memory at 6c500000 (32-bit, non-prefetchable) [size=1M]
	Memory at 6c600000 (32-bit, non-prefetchable) [size=16K]
	Capabilities: [40] Power Management version 3
	Capabilities: [50] MSI: Enable- Count=1/1 Maskable+ 64bit+
	Capabilities: [70] MSI-X: Enable+ Count=5 Masked-
	Capabilities: [a0] Express Endpoint, IntMsgNum 0
	Capabilities: [100] Advanced Error Reporting
	Capabilities: [140] Device Serial Number 58-47-ca-ff-ff-7a-98-3d
	Capabilities: [1c0] Latency Tolerance Reporting
	Capabilities: [1f0] Precision Time Measurement
	Capabilities: [1e0] L1 PM Substates
	Kernel driver in use: igc
	Kernel modules: igc


Using both Debian testing and my own kernel built from 6.12, the igc
driver appears broken after resume.

After resuming the device is down and no address present.
Attempts to set link up manually fail.
If I do rmmod/modprobe of igc it comes back.

Doing a bit of bisectting but it is slow going.
