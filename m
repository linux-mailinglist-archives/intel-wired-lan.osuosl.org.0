Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
	by mail.lfdr.de (Postfix) with ESMTPS id 6ED50A4A6CD
	for <lists+intel-wired-lan@lfdr.de>; Sat,  1 Mar 2025 01:01:18 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 33A8D60591;
	Sat,  1 Mar 2025 00:01:14 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id OCcdZdhFVKk4; Sat,  1 Mar 2025 00:01:13 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 87A98600C9
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1740787273;
	bh=IygUAUjG1IOSaWGxWEh/54kvVC/0la0W+PfZqK72KTk=;
	h=Date:In-Reply-To:References:From:To:Cc:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=VRtcMWFyUas++82K+BZHQRv6vDX3dF6sXp25bALwbtRov169Tercf/OaLTbMdh/BO
	 UtvHrwxHHnjdv33UgjyxDu1PGjp+EiB7Lw7L7OCmD61xxmQzTbJJEznQHyUMUWSbLA
	 vq6KzHN0Cw4N+h4iNQPTCNm3pIFyaGzUiauCVVVLcH5cpNH6+tzQtmcuoPkCWdSx9n
	 LgGFgxtRi8cLeG/FLl6ZhCkPFfcVeR2GA34viLLl5JDBD0ZJ2cjnzEZjIgYLFyF6+a
	 r/MxhbMjJosTULDM9ZTKVf+gitxDEU5tC9ZyaoRxmVMSK69sw2n3uxOa2PXBukffGh
	 SpT49WMWUzM6Q==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp3.osuosl.org (Postfix) with ESMTP id 87A98600C9;
	Sat,  1 Mar 2025 00:01:13 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [IPv6:2605:bc80:3010::133])
 by lists1.osuosl.org (Postfix) with ESMTP id 62B3B1DD
 for <intel-wired-lan@lists.osuosl.org>; Fri, 28 Feb 2025 16:30:13 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 1574741643
 for <intel-wired-lan@lists.osuosl.org>; Fri, 28 Feb 2025 16:30:12 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id M_j1veulU6tL for <intel-wired-lan@lists.osuosl.org>;
 Fri, 28 Feb 2025 16:30:11 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom;
 client-ip=2607:f8b0:4864:20::1049; helo=mail-pj1-x1049.google.com;
 envelope-from=3kutbzwgkd6cgobfpmlpnvvnsl.jvtpuals-dpylk-shuspzaz.vzbvzs.vyn@flex--zhuyifei.bounces.google.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp2.osuosl.org 4278140413
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 4278140413
Received: from mail-pj1-x1049.google.com (mail-pj1-x1049.google.com
 [IPv6:2607:f8b0:4864:20::1049])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 4278140413
 for <intel-wired-lan@lists.osuosl.org>; Fri, 28 Feb 2025 16:30:11 +0000 (UTC)
Received: by mail-pj1-x1049.google.com with SMTP id
 98e67ed59e1d1-2fe916ba298so4856543a91.1
 for <intel-wired-lan@lists.osuosl.org>; Fri, 28 Feb 2025 08:30:11 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1740760210; x=1741365010;
 h=cc:to:from:subject:message-id:references:mime-version:in-reply-to
 :date:x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
 bh=IygUAUjG1IOSaWGxWEh/54kvVC/0la0W+PfZqK72KTk=;
 b=VuAZvuTGhNkajQTcHf76MYXeYeuIAg2kUgl98GAXyIZ2vj3R7O+JuhSTshzg6r995V
 EF67N/2Sc2TawNCJcmjjeG0Bf8RncModMJzpL2ZF9gdx7m2xFR6bNiEPp/D4Q05wUjzQ
 VfnnThoGN8xmBsVxAeNg4zAWxkIjCwG9YFRYjC8cYDCJ2hMsrjlKOtoFlrcXFXHvtlCN
 K52ep6GqmijrIBOHcf8lj3j1/OJa7r6R9ABi6YKRYXRvGRcwJ89lhW+rgMQUqSBh/ov1
 WA0wadVxti+e6TqDJsQWjLrRqZxEGWmYeN2aW5TgcmqIb9FVqkwvZ34zlgHVRxdir9IW
 AY3Q==
X-Forwarded-Encrypted: i=1;
 AJvYcCVi7krr3aspc23T12SyDRWD8hhx6I1vuOwWjyjuayIhjXX9lgfFUkL3xzUUuZ92y3chc+jgDZ9DzdgXZFjEqjY=@lists.osuosl.org
X-Gm-Message-State: AOJu0YzbTbv6gKxtofYSBHuttNW8EpTIAT7MZJi1UVfpa6ZOW4w7FVk+
 juQZ8esspVEMxTf0/fpJZepbn/TCC8bSF5fkbOR0cGewyeG4rR5V1WkkNSLh+pF7n7Gv4H0z4kJ
 1H6AWqMPAJQ==
X-Google-Smtp-Source: AGHT+IFHDSjI3RHsIwnjZaB50DsSocX5C/rWjbGT8/BHCr5Oj31lJ8JPnzylmqKL2eaqIp7igaNt2sgUdr9/9g==
X-Received: from pjbsj4.prod.google.com ([2002:a17:90b:2d84:b0:2ef:786a:1835])
 (user=zhuyifei job=prod-delivery.src-stubby-dispatcher) by
 2002:a17:90a:d605:b0:2ee:c04a:4281 with SMTP id
 98e67ed59e1d1-2febab2ec9cmr6247242a91.6.1740760210435; 
 Fri, 28 Feb 2025 08:30:10 -0800 (PST)
Date: Fri, 28 Feb 2025 16:29:58 +0000
In-Reply-To: <20250227131314.2317200-10-milena.olech@intel.com>
Mime-Version: 1.0
References: <20250227131314.2317200-10-milena.olech@intel.com>
X-Mailer: git-send-email 2.48.1.711.g2feabab25a-goog
Message-ID: <20250228162958.1257521-1-zhuyifei@google.com>
From: YiFei Zhu <zhuyifei@google.com>
To: milena.olech@intel.com
Cc: anthony.l.nguyen@intel.com, intel-wired-lan@lists.osuosl.org, 
 netdev@vger.kernel.org, przemyslaw.kitszel@intel.com, 
 YiFei Zhu <zhuyifei@google.com>
Content-Type: text/plain; charset="UTF-8"
X-Mailman-Approved-At: Sat, 01 Mar 2025 00:01:11 +0000
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=google.com; s=20230601; t=1740760210; x=1741365010; darn=lists.osuosl.org;
 h=cc:to:from:subject:message-id:references:mime-version:in-reply-to
 :date:from:to:cc:subject:date:message-id:reply-to;
 bh=IygUAUjG1IOSaWGxWEh/54kvVC/0la0W+PfZqK72KTk=;
 b=iWjeLFR0QUKgdpxeMOEG1lEkwsS9AH+AJLpnc79CQ4/jdwQwPe3LrMMft1V7pHk/1Y
 /EvUGfMQfs6QAMhyGry7uO1/Xs+qcRSyEsSVs9ooNLtYu4VmJS9Ec0J7M39H4Oy67TDT
 Z964+N+UXV+wOjHg57f4+VIfv9mCzA2uqiqQR/PmDFOot5mlBvr+G4CTjiFtzgHAiAwx
 VqB4gVLssWlMPo8oXHhlezhc3D1kh9EU0wQcYZdFnn75aQFdM/tWii6rFZ2oGEleQY+N
 Fm6N/0zOmXBNylGg0qe/fCJ6J/W3CkmWVwe5IIz0eU3XfCjavw1txfRZn7AU8UlTF8hz
 BOoA==
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dmarc=pass (p=reject dis=none)
 header.from=google.com
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=google.com header.i=@google.com header.a=rsa-sha256
 header.s=20230601 header.b=iWjeLFR0
Subject: Re: [Intel-wired-lan] [PATCH v8 iwl-next 09/10] idpf: add support
 for Rx timestamping
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

> Add Rx timestamp function when the Rx timestamp value is read directly
> from the Rx descriptor. In order to extend the Rx timestamp value to 64
> bit in hot path, the PHC time is cached in the receive groups.
> Add supported Rx timestamp modes.
> 
> Signed-off-by: Milena Olech <milena.olech@intel.com>
> ---
> v7 -> v8: add a function to check if the Rx timestamp for a given vport
> is enabled
> v5 -> v6: add Rx filter
> v2 -> v3: add disable Rx timestamp
> v1 -> v2: extend commit message
> 
>  .../net/ethernet/intel/idpf/idpf_ethtool.c    |  1 +
>  drivers/net/ethernet/intel/idpf/idpf_lib.c    |  6 +-
>  drivers/net/ethernet/intel/idpf/idpf_ptp.c    | 86 ++++++++++++++++++-
>  drivers/net/ethernet/intel/idpf/idpf_ptp.h    | 21 +++++
>  drivers/net/ethernet/intel/idpf/idpf_txrx.c   | 30 +++++++
>  drivers/net/ethernet/intel/idpf/idpf_txrx.h   |  7 +-
>  6 files changed, 147 insertions(+), 4 deletions(-)

Tested-by: YiFei Zhu <zhuyifei@google.com>

I was able to receive hardware timestamps in ts[2] as expected, after enabling
SIOCSHWTSTAMP with rx_filter=HWTSTAMP_FILTER_ALL, and SO_TIMESTAMPING with
flags=0x7c.

Thanks
YiFei Zhu
