Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 418613C8219
	for <lists+intel-wired-lan@lfdr.de>; Wed, 14 Jul 2021 11:52:41 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id E810340576;
	Wed, 14 Jul 2021 09:52:39 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id VX1-cSBNZBD4; Wed, 14 Jul 2021 09:52:39 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id DAFBD4025E;
	Wed, 14 Jul 2021 09:52:38 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 253271BF280
 for <intel-wired-lan@lists.osuosl.org>; Wed, 14 Jul 2021 09:52:34 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 1097E60A80
 for <intel-wired-lan@lists.osuosl.org>; Wed, 14 Jul 2021 09:52:34 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Authentication-Results: smtp3.osuosl.org (amavisd-new);
 dkim=pass (2048-bit key) header.d=canonical.com
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id HkMDIRKtbeWG for <intel-wired-lan@lists.osuosl.org>;
 Wed, 14 Jul 2021 09:52:33 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
Received: from smtp-relay-canonical-1.canonical.com
 (smtp-relay-canonical-1.canonical.com [185.125.188.121])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 4BB3360A7E
 for <intel-wired-lan@lists.osuosl.org>; Wed, 14 Jul 2021 09:52:33 +0000 (UTC)
Received: from mail-ed1-f72.google.com (mail-ed1-f72.google.com
 [209.85.208.72])
 (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
 key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
 (No client certificate requested)
 by smtp-relay-canonical-1.canonical.com (Postfix) with ESMTPS id 8BE524061A
 for <intel-wired-lan@lists.osuosl.org>; Wed, 14 Jul 2021 09:52:31 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=canonical.com;
 s=20210705; t=1626256351;
 bh=80zXfnJOV6lMeG5E5RjQ3UMMrg6S4mJKlz3aPhaJln4=;
 h=MIME-Version:From:Date:Message-ID:Subject:To:Content-Type;
 b=MJVL1E7f4cVZn4DDpqfig9e7WeOFR2h5wX3mWyojjMstVHRgeT+2zOuyhAWD2Mjfb
 Q2acS3cd4pvgag/CKj8/1X086KYgM9AYPx5GXB9HOSfizTX5SyVA2DMGi2BJ+G7gkA
 O9xmo+1DU8StsHz8oxXOHi2eXjOp0kGBlyYZmIvpXkmy1aP7JqwyNmTiQFosB4XHYy
 d5xzeMt3GO69Vb52Q5z+AO+by0L7TeHOYtgdZ1DejBTiMbtLqaDrNNRFOaSvsQX0vc
 bPmfKXlFJgvIpCvj5z47sb7WRLOGwWRSCre14M3usXAY12ji7EsnibQBhK2UH+Gqb1
 5MDZKh2rf4nqA==
Received: by mail-ed1-f72.google.com with SMTP id
 i19-20020a05640200d3b02903948b71f25cso973894edu.4
 for <intel-wired-lan@lists.osuosl.org>; Wed, 14 Jul 2021 02:52:31 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=80zXfnJOV6lMeG5E5RjQ3UMMrg6S4mJKlz3aPhaJln4=;
 b=S728sT12j5xY4344EUN9i3Xi3Sv+C39HU3lUVJAGgBnNxbbmRJSeKho94vvif0kjZB
 O8i9IR/RbEkGU6mWhZoDys014KgaO+kr4mlYO6DopuzdBTluDruriatP7J0oJNoa18GI
 R8VSTS3L3S7rStKdvDlBrPeaDkCxM+qyeaP2s/khNHAdJzz2NnRhzxhcJvl06mTJTC6p
 Gxighd498h98W+azE5L78Kvwu7S73qxUf0iQfNGynzZvqA4bH2W9YP67+yZGVhVaB2Kg
 Qn3aMTkB7Tl7SZzWhz6ff/S1OQt3gv1e3QI/2rtSoCCGBsdwgcwAXl6ROMx2bJ9d+aSP
 Cdlw==
X-Gm-Message-State: AOAM532sRIw8VUNWTn30iQCvnNf5+lKRTuRdU9eEDqYMvYi4At36GKjk
 5fs7B4WhLGiVlzoELeHld5oMDHJaEO1DdruQZBUsIdMi3uuwsgtegnq/NCunqN4m4xGIm9H70pz
 BWK51nn2NmPY8cY1T4DYH5LxHzVEpSy9XvJ3LJnqt4RCrWllWKTqM/6eD2Frs1+k=
X-Received: by 2002:a17:906:17c2:: with SMTP id
 u2mr2167089eje.117.1626256351031; 
 Wed, 14 Jul 2021 02:52:31 -0700 (PDT)
X-Google-Smtp-Source: ABdhPJy6o86w5XcTXx0rweh1OQO8vQJqb2pD8eu/0VlUBpbyR5Fo/OYq0Lk+k1MJzySGibta0hOHd2nc95S32JqueFc=
X-Received: by 2002:a17:906:17c2:: with SMTP id
 u2mr2167061eje.117.1626256350762; 
 Wed, 14 Jul 2021 02:52:30 -0700 (PDT)
MIME-Version: 1.0
References: <20210712133500.1126371-1-kai.heng.feng@canonical.com>
 <20210712133500.1126371-2-kai.heng.feng@canonical.com>
 <3947d70a-58d0-df93-24f1-1899fd567534@intel.com>
 <CAAd53p79BwxPGRECYGrpCQbSJz8NY2WrG+AJCuaj89XNqCy59Q@mail.gmail.com>
 <16e188d5-f06e-23dc-2f71-c935240dd3b4@intel.com>
In-Reply-To: <16e188d5-f06e-23dc-2f71-c935240dd3b4@intel.com>
From: Kai-Heng Feng <kai.heng.feng@canonical.com>
Date: Wed, 14 Jul 2021 17:52:18 +0800
Message-ID: <CAAd53p5Pyk80c0FjmqF9cjicNF8t0eTC7Y3BP-rWqW3O53K1Mg@mail.gmail.com>
To: "Ruinskiy, Dima" <dima.ruinskiy@intel.com>
Subject: Re: [Intel-wired-lan] [PATCH 2/3] e1000e: Make mei_me active when
 e1000e is in use
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
Cc: devora.fuxbrumer@intel.com,
 "open list:NETWORKING DRIVERS" <netdev@vger.kernel.org>,
 alexander.usyskin@intel.com, open list <linux-kernel@vger.kernel.org>,
 Jakub Kicinski <kuba@kernel.org>, AceLan Kao <acelan.kao@canonical.com>,
 "moderated list:INTEL ETHERNET DRIVERS" <intel-wired-lan@lists.osuosl.org>,
 "David S. Miller" <davem@davemloft.net>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

On Wed, Jul 14, 2021 at 5:06 PM Ruinskiy, Dima <dima.ruinskiy@intel.com> wrote:
>
> On 14/07/2021 9:28, Kai-Heng Feng wrote:
> >> I do not know how MEI driver affect 1Gbe driver - so, I would suggest to
> >> involve our CSME engineer (alexander.usyskin@intel.com) and try to
> >> investigate this problem.
> >> Does this problem observed on Dell systems? As I heard no reproduction
> >> on Intel's RVP platform.
> >> Another question: does disable mei_me runpm solve your problem?
> >
> > Yes, disabling runpm on mei_me can workaround the issue, and that's
> > essentially what this patch does by adding DL_FLAG_PM_RUNTIME |
> > DL_FLAG_RPM_ACTIVE flag.
> >
> > Kai-Heng
> Hi, Kai-Heng,
>
> If the goal of the patch is to essentially disable runpm on mei_me, then
> why is the patch touching code in the e1000e driver?

We can put the workaround in e1000e, mei_me or as PCI quirk.
But since the bug itself manifests in e1000e, I think it's more
appropriate to put it here.

To be more specific, it doesn't disable runtime suspend on mei_me, it
makes mei_me the power supplier of e1000e.
So when e1000e can be runtime suspended (i.e. no link partner), mei_me
can also get runtime suspended too.

>
> I agree with Sasha Neftin; it seems like the wrong location, and the
> wrong way to do it, even if it currently works. We need to understand
> what causes runpm of mei_me to adversely affect LAN Rx, and for this we
> need the involvement of mei_me owners.

I think it's the right location, however I totally agree with your
other arguments.
There are many users already affected by this bug, so if a proper fix
isn't available for now, the temporary workaround can help here.

Kai-Heng

>
> --Dima
> ---------------------------------------------------------------------
> Intel Israel (74) Limited
>
> This e-mail and any attachments may contain confidential material for
> the sole use of the intended recipient(s). Any review or distribution
> by others is strictly prohibited. If you are not the intended
> recipient, please contact the sender and delete all copies.
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
