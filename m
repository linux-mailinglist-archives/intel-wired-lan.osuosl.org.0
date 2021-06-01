Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 6FF793979A3
	for <lists+intel-wired-lan@lfdr.de>; Tue,  1 Jun 2021 19:59:18 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 0F1B360656;
	Tue,  1 Jun 2021 17:59:17 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 063rv50zAnor; Tue,  1 Jun 2021 17:59:16 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id 11849605EE;
	Tue,  1 Jun 2021 17:59:16 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id EA8101BF5A5
 for <intel-wired-lan@lists.osuosl.org>; Tue,  1 Jun 2021 17:42:20 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id D81D060656
 for <intel-wired-lan@lists.osuosl.org>; Tue,  1 Jun 2021 17:42:20 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id VaZpAbMlpRc3 for <intel-wired-lan@lists.osuosl.org>;
 Tue,  1 Jun 2021 17:42:20 +0000 (UTC)
X-Greylist: whitelisted by SQLgrey-1.8.0
Received: from mail-qk1-x733.google.com (mail-qk1-x733.google.com
 [IPv6:2607:f8b0:4864:20::733])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 35C336060D
 for <intel-wired-lan@lists.osuosl.org>; Tue,  1 Jun 2021 17:42:20 +0000 (UTC)
Received: by mail-qk1-x733.google.com with SMTP id i5so15102552qkf.12
 for <intel-wired-lan@lists.osuosl.org>; Tue, 01 Jun 2021 10:42:20 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=9MohaJcbxFVYSnX31aM9HSDnOhmBxW3aa4nKD3vvtGk=;
 b=q4Mswj45AOw5p0wm2tN+SJ9lEDiwbrs4mSFbvbJMb8cIl5poSO0vjh0lS1HeOUaW7Z
 h8T0ssfEyAn+iJmHsfRlIvdYaHSJ4NCEqYurrSSqIqGqVnaSjmZS+WIk/zMSTOYexPjC
 Kkg5wbTVq1AkDI82LHGE72t+nQIi1roh+cGwkXiIx1LvzpdQlrnVzKCLvWvwQ3zV1TDH
 gc8Q2LeVKMkkfSStHjC4nbBtgyEXTF1cCPnWxHDLVlBp5kdkk6wSSlgYpSyT0ruPKEZa
 310R+LSTGt0i0P4wOgozsEGyLGYJaI0hl6aK3eRhaJBmwUJPtwhhvSIy9JAyv5MA+zif
 0C3A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=9MohaJcbxFVYSnX31aM9HSDnOhmBxW3aa4nKD3vvtGk=;
 b=EFrqD6O4XHt2YiRvm1L3RYDq6q5TzHKz4fTmhOfPq7t9Om/Pl422+4Zd1p8Wx+daQ3
 t3iFum61DTCYV1NvzDvmkr6uOHRRGDFBTlBa7k54p/havZE1HEMjPkR3VifrqHM8FYD1
 7G/FgLI2B31pWJRzcGUkj3HF7iQ+2P4t+Ho9k1fxNdbwBFoFFvil6duNxr20U7oT6aLc
 /wf0qh2lNwDrgN/sJ6BNQVSJmQMiyut29LIGG0+tk+HFDtvImY2go1UF3ylFkRKt0w24
 4bbBrxTP5wNDxlEgo0u5TM5YLtGChyXf476Nj/kfollw64t2rhTJF0KclR41vJLtq+My
 elVQ==
X-Gm-Message-State: AOAM53055l7YkBEf4OVtZixF79TwWWxbFVtstPCxn9o5qyNEIe2tQV7P
 teWzukuS06VDlMifqYqE8ey+WmDh7ouA66m1ew==
X-Google-Smtp-Source: ABdhPJxb9G4H7H2iZTBbmY6dvvnDCTaeConQExPqDshL4kHeRVQImQJr4o/p2VCeQCsEHu0g66HzA8KIEIqznYDHyW4=
X-Received: by 2002:a37:424c:: with SMTP id p73mr23344013qka.465.1622569338850; 
 Tue, 01 Jun 2021 10:42:18 -0700 (PDT)
MIME-Version: 1.0
References: <CAHn8xckNXci+X_Eb2WMv4uVYjO2331UWB2JLtXr_58z0Av8+8A@mail.gmail.com>
 <cc58c09e-bbb5-354a-2030-bf8ebb2adc86@iogearbox.net>
 <7f048c57-423b-68ba-eede-7e194c1fea4e@arm.com>
In-Reply-To: <7f048c57-423b-68ba-eede-7e194c1fea4e@arm.com>
From: Jussi Maki <joamaki@gmail.com>
Date: Tue, 1 Jun 2021 19:42:07 +0200
Message-ID: <CAHn8xckNt3smeQPi3dgq5i_3vP7KwU45pnP5OCF8nOV_QEdyMA@mail.gmail.com>
To: Robin Murphy <robin.murphy@arm.com>
X-Mailman-Approved-At: Tue, 01 Jun 2021 17:59:11 +0000
Subject: Re: [Intel-wired-lan] Regression 5.12.0-rc4 net: ice: significant
 throughput drop
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
Cc: jroedel@suse.de, Daniel Borkmann <daniel@iogearbox.net>,
 netdev@vger.kernel.org, hch@lst.de, iommu@lists.linux-foundation.org,
 intel-wired-lan@lists.osuosl.org, suravee.suthikulpanit@amd.com,
 bpf <bpf@vger.kernel.org>, davem@davemloft.net
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

Hi Robin,

On Tue, Jun 1, 2021 at 2:39 PM Robin Murphy <robin.murphy@arm.com> wrote:
> >> The regression shows as a significant drop in throughput as measured
> >> with "super_netperf" [0],
> >> with measured bandwidth of ~95Gbps before and ~35Gbps after:
>
> I guess that must be the difference between using the flush queue
> vs. strict invalidation. On closer inspection, it seems to me that
> there's a subtle pre-existing bug in the AMD IOMMU driver, in that
> amd_iommu_init_dma_ops() actually runs *after* amd_iommu_init_api()
> has called bus_set_iommu(). Does the patch below work?

Thanks for the quick response & patch. I tried it out and indeed it
does solve the issue:

# uname -a
Linux zh-lab-node-3 5.13.0-rc3-amd-iommu+ #31 SMP Tue Jun 1 17:12:57
UTC 2021 x86_64 x86_64 x86_64 GNU/Linux
root@zh-lab-node-3:~# ./super_netperf 32 -H 172.18.0.2
95341.2

root@zh-lab-node-3:~# uname -a
Linux zh-lab-node-3 5.13.0-rc3-amd-iommu-unpatched #32 SMP Tue Jun 1
17:29:34 UTC 2021 x86_64 x86_64 x86_64 GNU/Linux
root@zh-lab-node-3:~# ./super_netperf 32 -H 172.18.0.2
33989.5
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
