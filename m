Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 677A8DB57F
	for <lists+intel-wired-lan@lfdr.de>; Thu, 17 Oct 2019 20:06:40 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by silver.osuosl.org (Postfix) with ESMTP id 01C8B203EA;
	Thu, 17 Oct 2019 18:06:39 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id qy81LMBuVsTc; Thu, 17 Oct 2019 18:06:38 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by silver.osuosl.org (Postfix) with ESMTP id 3DCCF20415;
	Thu, 17 Oct 2019 18:06:38 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 474D21BF3B1
 for <intel-wired-lan@lists.osuosl.org>; Thu, 17 Oct 2019 18:06:35 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by silver.osuosl.org (Postfix) with ESMTP id 4304E20402
 for <intel-wired-lan@lists.osuosl.org>; Thu, 17 Oct 2019 18:06:35 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id hCZPNFxIDiNk for <intel-wired-lan@lists.osuosl.org>;
 Thu, 17 Oct 2019 18:06:32 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-vs1-f50.google.com (mail-vs1-f50.google.com
 [209.85.217.50])
 by silver.osuosl.org (Postfix) with ESMTPS id 2E510203EA
 for <intel-wired-lan@lists.osuosl.org>; Thu, 17 Oct 2019 18:06:32 +0000 (UTC)
Received: by mail-vs1-f50.google.com with SMTP id s7so2239075vsl.2
 for <intel-wired-lan@lists.osuosl.org>; Thu, 17 Oct 2019 11:06:32 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:from:date:message-id:subject:to;
 bh=4/iLql5ywCzyTzvF79nPPKOAODs+0nFNysNgE5KvDws=;
 b=hE9QcjKoXL56Z05cX9UqBUcZvMYanlz3pMiMJUtkSb13LJH3w7SSnb4h85A/nkwiYF
 DuovDIY4eL0fHhAeLQJtRHg+9fynajcyfwMVxnRH8yIK+UTaUeYxif0qqz0Hy53neM0z
 NafmPhlq+7Zd46c90kmBtqdEwlLZ0qPK4YhWild/04bf/WIthLzes5ynS1b5f2Xswuzd
 QcW4/OLdDg6UFmJhgX2xdapmInOagxR0iZeLdRM42imMobZL2eNm1bByF2NceTHEg82Y
 RANvTfhKHcHvl4JsjXhTrWuxzECmBSSrMneXBed7bbVD8jecZKnrNuDsybz1CtnyYI0B
 RVIA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:from:date:message-id:subject:to;
 bh=4/iLql5ywCzyTzvF79nPPKOAODs+0nFNysNgE5KvDws=;
 b=AbMZDecUX4Cf5BEHhCrqPXykfuvwpCmTU2Ql33CQrCsVb8vJMNIw9EvBIjcdKeRd4k
 wG7tJ/Vs93MpTnbHLCADDw6wJ+5QBYYFWgDarZHWwPYWy7+bA/vGIoOcDEGGY+OoJsZo
 tzJGvRb77sEpF+Zde7b0WHXaJSa9O05LbGa8/iJb9lJTo7cKgEGDlpJm3z+c69VPYJDv
 biyYhyNs1EGLjCw1zNOY1kZBL2GoMwonFXr0FY/vyS6fKoXlfAR8DLfWO1T985aNBrvg
 Gavdj9atrQjU1Le05rskYIAlbonuqgRvdDTSI2KSTDaJkTVPryOhRb79ERBjgN12RLb0
 2jSg==
X-Gm-Message-State: APjAAAWhyLiospIAKrShMLYJaTnOARYHRtybjNrf/ALN0OnXz9VrniRJ
 hqCpxtV4+rpK1xxaPhN3JVgKtMRqv1o3H8C5o61WD70isII=
X-Google-Smtp-Source: APXvYqwpeIKWR9m2r814rghoutOREHYLg9Aqo9d3xamG5BQ3qLC+3igBwTt1e8984QtT0awrqF7UiYhGtRLk7NmaTjw=
X-Received: by 2002:a67:d890:: with SMTP id f16mr2865659vsj.119.1571335590910; 
 Thu, 17 Oct 2019 11:06:30 -0700 (PDT)
MIME-Version: 1.0
From: JD <jdtxs00@gmail.com>
Date: Thu, 17 Oct 2019 13:06:20 -0500
Message-ID: <CAMnf+Phw525rfCHVDXz1uWZw4Y=HuyBjnhpqYzjx2dmgpsHMsA@mail.gmail.com>
To: intel-wired-lan@lists.osuosl.org
Subject: [Intel-wired-lan] VF/SRIOV question
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

I couldn't find anything in the spec/doc for the Intel 82599 series
NIC's regarding performance penalties with a higher number of VF's.

Currently I'm using 16 VF's with SR-IOV/QEMU, but the 82599 NIC
supports up to 63 VF's. From a driver/NIC perspective, are there any
performance considerations or penalties of enabling/using all of the
available VF's on a NIC?

If there isn't, is this the same case for other models (besides 82599) as well?

Thank you!
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
