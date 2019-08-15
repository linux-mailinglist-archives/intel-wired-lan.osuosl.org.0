Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 1F05F8F67E
	for <lists+intel-wired-lan@lfdr.de>; Thu, 15 Aug 2019 23:35:00 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by hemlock.osuosl.org (Postfix) with ESMTP id CFD1388457;
	Thu, 15 Aug 2019 21:34:58 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id kj9W72XAAqGj; Thu, 15 Aug 2019 21:34:58 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by hemlock.osuosl.org (Postfix) with ESMTP id 37BA28846E;
	Thu, 15 Aug 2019 21:34:58 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id B3DA81BF37F
 for <intel-wired-lan@lists.osuosl.org>; Thu, 15 Aug 2019 21:34:56 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by silver.osuosl.org (Postfix) with ESMTP id AF68E2051E
 for <intel-wired-lan@lists.osuosl.org>; Thu, 15 Aug 2019 21:34:56 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id IHr4WVTTryCK for <intel-wired-lan@lists.osuosl.org>;
 Thu, 15 Aug 2019 21:34:56 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-ua1-f52.google.com (mail-ua1-f52.google.com
 [209.85.222.52])
 by silver.osuosl.org (Postfix) with ESMTPS id E5C6D2051A
 for <intel-wired-lan@lists.osuosl.org>; Thu, 15 Aug 2019 21:34:55 +0000 (UTC)
Received: by mail-ua1-f52.google.com with SMTP id g11so1347586uak.0
 for <intel-wired-lan@lists.osuosl.org>; Thu, 15 Aug 2019 14:34:55 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:from:date:message-id:subject:to;
 bh=GSrmtpipVQCQo4aigHFLsAEob0HLAgYS/CBZYjde7fk=;
 b=nZEyxNZdsDXDTGV6I6TnbX59atcWXnTC9oUUA5Wtya98duJyBPU1KEA5JQGApOC2s3
 g+lHy71TBxy3Bp3JkJQYktib0HX7dXdLUaRlY8o231k8zMmbuSj+5D1qNWxbmYtlcapE
 AYekW+cvK8aZus8yFY+rIgALYolovj2k89Su7teWATayElWBCPFvfJsSdE9GBukXoUra
 DeUFTuqJoF95hboAFokBJgnJVFGCeGyIrUTk05YHfKj1A599UR4pPqTkmt7kQvCe8E4C
 yiZPfLyTfvt7zHMi5vNYF1ygIthAlsih4Ivzm4hJXpLSWJBWn7zAAmtZBcgEKmS3kc1U
 qqQg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:from:date:message-id:subject:to;
 bh=GSrmtpipVQCQo4aigHFLsAEob0HLAgYS/CBZYjde7fk=;
 b=dfOijHPv1rYQNT0lqeoY74crSaVt4T4q4da2E5KJcW9eLvugwTzwICYxKYnU0Vk34g
 VItpwOkeMutjM+4kHxrR85KZTKgGyQsQaCBvFcxQSOnJ/D8UCCAyEtPbzz/XfmNFn3Aa
 te02rjNNRqXO/PQqKtKpdK06XgLdZ2mqjGYJYzmL0CkercZrKNo2m1ozQjb5yd5EoCwr
 RdIdeLZ26mLXCi18mOXCXg8XbpuMaSrcuYktknQYLNB2DWQ15OcRCxLzOr4PUyqOap59
 Dpq4DDCPIVs6dZAaSflBTmiOQr6QQ1zBE/VN26YykcazA09AUVEH872ni9UVcjVMPmOz
 k/wA==
X-Gm-Message-State: APjAAAUcez+RH/VW2W15GwCjpOjAQA/uElulad2NE647evydvjPl37Nf
 ZUJf0Y2kTWENfEcEZ6YmYDMva1lWlSbLA+W9P5HhkOdf
X-Google-Smtp-Source: APXvYqy1icVx/1UFQOOvAZdiifOxxjtbxiVrlFXwGX5FHyQaUkxiBL0DkezDmujPobCm7/XmzjdpjOVgM7M0mCM3i1M=
X-Received: by 2002:ab0:63c3:: with SMTP id i3mr2352677uap.7.1565904894765;
 Thu, 15 Aug 2019 14:34:54 -0700 (PDT)
MIME-Version: 1.0
From: Shannon Nelson <shannon.lee.nelson@gmail.com>
Date: Thu, 15 Aug 2019 14:34:44 -0700
Message-ID: <CAP-MU4MAwQd5bOGpJ=tu4iVB4j4FO6UWbkXg6ox34i7pb5DjQA@mail.gmail.com>
To: intel-wired-lan@lists.osuosl.org
Subject: [Intel-wired-lan] x
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

We've been occasionally seeing some of these messages recently on some
of our machines after reboots.  Usually a powercycle clears it up.
Any hints as to what might be going on?

[    2.570012] ixgbe: Intel(R) 10 Gigabit PCI Express Network Driver -
version 5.1.0-k-rh7.5
[    2.570016] ixgbe: Copyright (c) 1999-2016 Intel Corporation.
[    4.883541] ixgbe 0000:65:00.0 (unregistered net_device): eeprom
read at offset 40 failed
[    7.112885] ixgbe 0000:65:00.0 (unregistered net_device): eeprom
read at offset 39 failed
[   11.571710] ixgbe 0000:65:00.0: The EEPROM Checksum Is Not Valid
[   11.571916] ixgbe: probe of 0000:65:00.0 failed with error -5
[   13.922688] ixgbe 0000:65:00.1 (unregistered net_device): eeprom
read at offset 40 failed
[   16.152080] ixgbe 0000:65:00.1 (unregistered net_device): eeprom
read at offset 39 failed
[   20.617460] ixgbe 0000:65:00.1: The EEPROM Checksum Is Not Valid
[   20.617639] ixgbe: probe of 0000:65:00.1 failed with error -5


Thanks,
sln


-- 
==============================================
Mr. Shannon Nelson         Parents can't afford to be squeamish.
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
