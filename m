Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 01C0DA8889A
	for <lists+intel-wired-lan@lfdr.de>; Mon, 14 Apr 2025 18:29:34 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 988A7408DA;
	Mon, 14 Apr 2025 16:29:32 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id lFQZSt-iCgLb; Mon, 14 Apr 2025 16:29:32 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org ED28E40844
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1744648172;
	bh=Z9YTnbSfm3obJ2BhJveT3wt+uBc2RX1rhcU/TJobOfg=;
	h=From:Date:To:Cc:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:From;
	b=CA1Fi8JSNDjt0LJ46v79lwhAkQu0XXYC/+6VT/5K7DsPUiL4vhRlopnlj+6iQjbsp
	 r4twgtVebkCuxRBqh4Ps9YFfZZgBovJ6N1hFwUE1tAjf/l0+vhM3ZOiMz85wW5VD9U
	 rLHvCi3hCtEnfNEmBYMJVrU6tSkdh4RZmNvni78ldO5+nio1nl2Q2TJ8xQHM6/Pn+i
	 M79LvjbREbSP7VG97PfWIUIYkWtPSxHZnkYBH3dUkRuT/9FuPfIv7XvGoVRkeY4Ayf
	 kQmCZ/V3F3XKtOW8ySsF9hplvuvcV6RpOFAEhdMj8+mUEvbaxgXDFWQXo4dWo2FzOq
	 D+/qWkQo3NHPg==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp4.osuosl.org (Postfix) with ESMTP id ED28E40844;
	Mon, 14 Apr 2025 16:29:31 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
 by lists1.osuosl.org (Postfix) with ESMTP id D6F10250
 for <intel-wired-lan@lists.osuosl.org>; Mon, 14 Apr 2025 16:29:30 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id BCCAF80DC6
 for <intel-wired-lan@lists.osuosl.org>; Mon, 14 Apr 2025 16:29:30 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id M2-dEDAzgKtz for <intel-wired-lan@lists.osuosl.org>;
 Mon, 14 Apr 2025 16:29:30 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom;
 client-ip=2a00:1450:4864:20::52c; helo=mail-ed1-x52c.google.com;
 envelope-from=jaroslav.pulchart@gooddata.com; receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp1.osuosl.org C6E8F80B34
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org C6E8F80B34
Received: from mail-ed1-x52c.google.com (mail-ed1-x52c.google.com
 [IPv6:2a00:1450:4864:20::52c])
 by smtp1.osuosl.org (Postfix) with ESMTPS id C6E8F80B34
 for <intel-wired-lan@lists.osuosl.org>; Mon, 14 Apr 2025 16:29:29 +0000 (UTC)
Received: by mail-ed1-x52c.google.com with SMTP id
 4fb4d7f45d1cf-5e61375c108so5729974a12.1
 for <intel-wired-lan@lists.osuosl.org>; Mon, 14 Apr 2025 09:29:29 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1744648167; x=1745252967;
 h=content-transfer-encoding:cc:to:subject:message-id:date:from
 :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
 :reply-to;
 bh=Z9YTnbSfm3obJ2BhJveT3wt+uBc2RX1rhcU/TJobOfg=;
 b=S5O8wlxgGdG+mFve/sYjOSXJ+RpOHRqL8Ud63XLmaLsfROMSsHoq5+NaL2mroEwzBP
 iGByKA+9aYj2dUKGFvMb7KEprEcP0Va/3CV/43D3gWyy5QvAIO9oUU2KAaIT00TnhG+L
 eMSlIEjRQbSlTmw3p0s3fGh/Nb7mijNivcMfhWHDpvY2VnEPBpYU1P7mjoqRPm/bzlIn
 oQm075Yr5jjtJWx6ZS/1sctloFFImCGcCjNeK3FRXSJ5vTP7xMOQ7dDenxKoqij8AYfc
 yELeaRcgMHTrOnxugXGGWfWoIzRGQV3MFZx/bYPO7Wo4GbPey+U+PLhSb9ljLgGgsVTS
 o5Ow==
X-Forwarded-Encrypted: i=1;
 AJvYcCV2W35UEO6dIWlQJ4/eTyd/81bYtAc00bT2hCK+4XypZnmZtYusprt9fkE/mQXAYXqmJNuEn62grHC2F3aVbt8=@lists.osuosl.org
X-Gm-Message-State: AOJu0YzPUNWTdotySeDOw6i9yVuPBBKJF7lLIaqZf+qPrcqwvThVmylP
 pYdfsHMYzHqZVI3+wcozOE6QXYdu7i/DZ0eV41uPkSiSn64jPeTqUC0Utjr3jE4cAl3cmbZGMSp
 S1RcVNSOZABF5j9Zibp1z61I/JN3ZORCpZKVE
X-Gm-Gg: ASbGnct8cjD4TGMd5biLuzHI9sXv5C9/OE+JII8O5nI7zhKkYtAtL8T0A9R6knNC5To
 spufo5KBGJFS0G61LPJelWC9jvWDzoPh9dCRtSrpwz1oEdQ9ZrR+J+k2awS9SkqU9TdjJRcplLV
 e/V1T1gP3NUHomKPpaZNYfL24=
X-Google-Smtp-Source: AGHT+IHcrrGKFhMeLQ31WvRxBOez6r0eEL8a4TdkOGhogntyPaCZbt8wA0XHHpY25XP4nvLaxkzi/jkYTNVJWs9PghY=
X-Received: by 2002:a17:907:3fa2:b0:ac6:d9fa:46c8 with SMTP id
 a640c23a62f3a-acad36a0921mr1110877066b.39.1744648167164; Mon, 14 Apr 2025
 09:29:27 -0700 (PDT)
MIME-Version: 1.0
From: Jaroslav Pulchart <jaroslav.pulchart@gooddata.com>
Date: Mon, 14 Apr 2025 18:29:01 +0200
X-Gm-Features: ATxdqUFza1CQ4W9k5JorbqPCMerunVDsLOiFHZDxpXg6-fR3ZeEgQFPD8xdXkTg
Message-ID: <CAK8fFZ4hY6GUJNENz3wY9jaYLZXGfpr7dnZxzGMYoE44caRbgw@mail.gmail.com>
To: Tony Nguyen <anthony.l.nguyen@intel.com>, 
 "Kitszel, Przemyslaw" <przemyslaw.kitszel@intel.com>
Cc: jdamato@fastly.com, intel-wired-lan@lists.osuosl.org, 
 netdev@vger.kernel.org, Igor Raits <igor@gooddata.com>, 
 Daniel Secik <daniel.secik@gooddata.com>,
 Zdenek Pesek <zdenek.pesek@gooddata.com>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=gooddata.com; s=google; t=1744648167; x=1745252967; darn=lists.osuosl.org;
 h=content-transfer-encoding:cc:to:subject:message-id:date:from
 :mime-version:from:to:cc:subject:date:message-id:reply-to;
 bh=Z9YTnbSfm3obJ2BhJveT3wt+uBc2RX1rhcU/TJobOfg=;
 b=TGk8QBifKWFzbYGl+WVXIxdsfLr+JEBLpJk9iMCvmalp98wmIV1rzp8jRQg/5HBa34
 IqiQbf6LFaSHJAw0ToWV3I6SA3VU9sUnJIwVSV1VXxfS9a9dvjXC1V0OmM4QRK22idvZ
 mZ3etdM1zeqVX0Ra4d5Lu+Z0wncZtNDXXA5c8=
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dmarc=pass (p=quarantine dis=none)
 header.from=gooddata.com
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (1024-bit key,
 unprotected) header.d=gooddata.com header.i=@gooddata.com header.a=rsa-sha256
 header.s=google header.b=TGk8QBif
Subject: [Intel-wired-lan] Increased memory usage on NUMA nodes with ICE
 driver after upgrade to 6.13.y (regression in commit 492a044508ad)
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

Hello,

While investigating increased memory usage after upgrading our
host/hypervisor servers from Linux kernel 6.12.y to 6.13.y, I observed
a regression in available memory per NUMA node. Our servers allocate
60GB of each NUMA node=E2=80=99s 64GB of RAM to HugePages for VMs, leaving =
4GB
for the host OS.

After the upgrade, we noticed approximately 500MB less free RAM on
NUMA nodes 0 and 2 compared to 6.12.y, even with no VMs running (just
the host OS after reboot). These nodes host Intel 810-XXV NICs. Here's
a snapshot of the NUMA stats on vanilla 6.13.y:

     NUMA nodes:  0     1     2     3     4     5     6     7     8
 9    10    11    12    13    14    15
     HPFreeGiB:   60    60    60    60    60    60    60    60    60
 60   60    60    60    60    60    60
     MemTotal:    64989 65470 65470 65470 65470 65470 65470 65453
65470 65470 65470 65470 65470 65470 65470 65462
     MemFree:     2793  3559  3150  3438  3616  3722  3520  3547  3547
 3536  3506  3452  3440  3489  3607  3729

We traced the issue to commit 492a044508ad13a490a24c66f311339bf891cb5f
"ice: Add support for persistent NAPI config".

We limit the number of channels on the NICs to match local NUMA cores
or less if unused interface (from ridiculous 96 default), for example:
   ethtool -L em1 combined 6       # active port; from 96
   ethtool -L p3p2 combined 2      # unused port; from 96

This typically aligns memory use with local CPUs and keeps NUMA-local
memory usage within expected limits. However, starting with kernel
6.13.y and this commit, the high memory usage by the ICE driver
persists regardless of reduced channel configuration.

Reverting the commit restores expected memory availability on nodes 0
and 2. Below are stats from 6.13.y with the commit reverted:
    NUMA nodes:  0     1     2     3     4     5     6     7     8
9    10    11    12    13    14    15
    HPFreeGiB:   60    60    60    60    60    60    60    60    60
60   60    60    60    60    60    60
    MemTotal:    64989 65470 65470 65470 65470 65470 65470 65453 65470
65470 65470 65470 65470 65470 65470 65462
    MemFree:     3208  3765  3668  3507  3811  3727  3812  3546  3676  3596=
 ...

This brings nodes 0 and 2 back to ~3.5GB free RAM, similar to kernel
6.12.y, and avoids swap pressure and memory exhaustion when running
services and VMs.

I also do not see any practical benefit in persisting the channel
memory allocation. After a fresh server reboot, channels are not
explicitly configured, and the system will not automatically resize
them back to a higher count unless manually set again. Therefore,
retaining the previous memory footprint appears unnecessary and
potentially harmful in memory-constrained environments

Best regards,
Jaroslav Pulchart
