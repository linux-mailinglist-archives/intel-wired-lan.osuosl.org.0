Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 243ED30B18C
	for <lists+intel-wired-lan@lfdr.de>; Mon,  1 Feb 2021 21:25:36 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by hemlock.osuosl.org (Postfix) with ESMTP id A901386B2C;
	Mon,  1 Feb 2021 20:25:34 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id bX3eTVSP4dJs; Mon,  1 Feb 2021 20:25:34 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by hemlock.osuosl.org (Postfix) with ESMTP id 44CBE86FD2;
	Mon,  1 Feb 2021 20:25:34 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id B5D2C1BF35E
 for <intel-wired-lan@lists.osuosl.org>; Mon,  1 Feb 2021 20:13:59 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by fraxinus.osuosl.org (Postfix) with ESMTP id A7FB785754
 for <intel-wired-lan@lists.osuosl.org>; Mon,  1 Feb 2021 20:13:59 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id uhQHU_-qFnYX for <intel-wired-lan@lists.osuosl.org>;
 Mon,  1 Feb 2021 20:13:59 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-wm1-f42.google.com (mail-wm1-f42.google.com
 [209.85.128.42])
 by fraxinus.osuosl.org (Postfix) with ESMTPS id E70E28574F
 for <intel-wired-lan@lists.osuosl.org>; Mon,  1 Feb 2021 20:13:58 +0000 (UTC)
Received: by mail-wm1-f42.google.com with SMTP id f16so393344wmq.5
 for <intel-wired-lan@lists.osuosl.org>; Mon, 01 Feb 2021 12:13:58 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=aVXNNvrQzhSCART1M9uQi1RCKhtrDut9W9JE2BmbicA=;
 b=SQUrrOl6aYrucTEeDYRip0SpaEMVxaoPrzgQCfN8+xlOuFmO9awYM8CafY24fTHmxz
 F1aB2F6oLElqoAuoac3Adk7VSPHQs2kOdzTQokFHGuAijFUUoQusf6CZ9dnNgG9JVs0/
 AG0H8U5YCR25g4lWlIpw0Tfu+O7/HHGQjLhz7g91hBoLmOPUqH2k1sF/6iB20m5/dWx5
 h6DGbykdcCC7DgTN+f3kNVqk8R3VBDFP7WzdGBX11B/xlWvr1pPwfJgLPqHDGza+7Dry
 8SHc6VLjga9Qm7iiwR2DqYNIaYr+6hu0GSjHGfScCXJuy6TGN3A2T+UXyJevVGtMYb0T
 YnUw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=aVXNNvrQzhSCART1M9uQi1RCKhtrDut9W9JE2BmbicA=;
 b=hXgt0YoGf8F1kP+OcmUkuXY0L4VuqvKzlsa+KMFfA+6fkNUGhPzVtSs+pePvVhoq3G
 qWTx6MWoAmCKPDodzXZlY4N0tK6i+E8wvFYdOjftervUSIp/+yvxOv2ZGYzerPtGghgB
 nNvseIRC39Yb/AUo8QaZfBOi9TGvSkNjXwYhWxTO9FnjEBnS1Wm/G87RTmRraN5TKjKX
 qJtz95LGjJAj5iwJPxugHuZ+qWyHnyD6pI0/JoqD7tGHIOgNYQ7LG0PrgR2KxGGoowYA
 1/TFjqo/Lp3ChPXSid4BFSSdixhiBCgWj1WNj/RU95f2kj4oUG8hBqPTew9MADDKUBWG
 DTNw==
X-Gm-Message-State: AOAM5314pcQUFZvg9U1pEv0FKtfJYftBvwEspnyerGIlTmBB6blbjkYM
 FaFWRGuy3+YV/4q6iYhwZ9u/ZX7MoHuHktVY9jc+m4AorR4JVg==
X-Google-Smtp-Source: ABdhPJzeCzBgpOeIK1CgeDUKpMODp/l1qgQvJ4yWK7uxXrPvMpDojV1Qhm5z0da3ffUjmDA6GKGd76KmVzf27aNIG3A=
X-Received: by 2002:a1c:dc83:: with SMTP id t125mr479745wmg.154.1612209992707; 
 Mon, 01 Feb 2021 12:06:32 -0800 (PST)
MIME-Version: 1.0
References: <20201221222502.1706-1-nick.lowe@gmail.com>
 <379d4ef3-02e5-f08a-1b04-21848e11a365@bluematt.me>
 <20210201084747.2cb64c3f@kicinski-fedora-pc1c0hjn.dhcp.thefacebook.com>
 <a7a89e90bf6c3f383fa236b1128db8d012223da0.camel@intel.com>
 <20210201114545.6278ae5c@kicinski-fedora-pc1c0hjn.dhcp.thefacebook.com>
In-Reply-To: <20210201114545.6278ae5c@kicinski-fedora-pc1c0hjn.dhcp.thefacebook.com>
From: Nick Lowe <nick.lowe@gmail.com>
Date: Mon, 1 Feb 2021 20:06:16 +0000
Message-ID: <CADSoG1uRKexjQJ7Oxqyspzbpx=Qyq2dTbOMp-dEjTSMMySmkFg@mail.gmail.com>
To: Jakub Kicinski <kuba@kernel.org>
X-Mailman-Approved-At: Mon, 01 Feb 2021 20:25:32 +0000
Subject: Re: [Intel-wired-lan] [PATCH net] igb: Enable RSS for Intel I211
 Ethernet Controller
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
Cc: "netdev@vger.kernel.org" <netdev@vger.kernel.org>,
 "linux-wired-list@bluematt.me" <linux-wired-list@bluematt.me>,
 "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>,
 "davem@davemloft.net" <davem@davemloft.net>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

Hi all,

It is correct that this is not a regression, it instead has never worked.

My suggestion would be to merge it during the 5.11 cycle rather than
5.12 where possible because the patch is non-invasive and should be
lower risk.

There are significant and tangible real-world benefits to RSS
functioning with the i211 so I do not personally think, on balance,
that it is proportionate and worth waiting for 5.12 to conclude here.
Any thoughts?

More importantly though, after this does release in a stable kernel
(regardless of whether that is 5.11 or 5.12) and this change has had
some time to soak in the field, I do suggest consideration to then
backport this to the 5.4 and 5.10 LTS kernels so that RSS starts to
function there. 5.4 and 5.10 are the release branches that will, of
course, get far more use for the next couple of years.

Best,

Nick
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
