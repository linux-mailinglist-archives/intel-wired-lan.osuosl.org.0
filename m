Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
	by mail.lfdr.de (Postfix) with ESMTPS id CA0F946FF7F
	for <lists+intel-wired-lan@lfdr.de>; Fri, 10 Dec 2021 12:09:43 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 5F433613D4;
	Fri, 10 Dec 2021 11:09:42 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id J4uCqVG7Q_Ob; Fri, 10 Dec 2021 11:09:41 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id 3CA8F613D3;
	Fri, 10 Dec 2021 11:09:41 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 47DAE1BF59E
 for <intel-wired-lan@lists.osuosl.org>; Fri, 10 Dec 2021 11:09:36 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 3545885275
 for <intel-wired-lan@lists.osuosl.org>; Fri, 10 Dec 2021 11:09:36 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Authentication-Results: smtp1.osuosl.org (amavisd-new);
 dkim=pass (2048-bit key) header.d=intel.com
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id eBx3ut7K_48P for <intel-wired-lan@lists.osuosl.org>;
 Fri, 10 Dec 2021 11:09:35 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
Received: from mga05.intel.com (mga05.intel.com [192.55.52.43])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 9974C85274
 for <intel-wired-lan@lists.osuosl.org>; Fri, 10 Dec 2021 11:09:35 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1639134575; x=1670670575;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=FS4PnEFqktsl74QFl1oKDjvNGiKlWxYmMopnz/XDZoM=;
 b=eMqMBrDE437XvLb7K8Mum0tarM1C4wSxZvjXd3KAET4sV+ozppqFqLg6
 mrCYJRUAKl3j3xPtG0jC+f+qOaSmiQaTJZzn5W+Uen1URp8OYwdhoBIkv
 tzaxo44vydAFgT232N2VvQ0W7qrOcYwOW4Uugr0LJZ63UiQ1y2utALUZe
 GGvH0IKBOpIQ0Y6NWXrlMfWYlZiSSyAv29ml6/OUdk4lB4QQ936cvdd6I
 CI8rnSDrxVW1Mj6a/rYqtz5oaZ5WtqMuzLkOkq+016nF5VzF1bdD63d6S
 JWCp6uNeXIpwVokRDv+YcBcokT2eBKfNo3NOqqLeeCUUy/okissGtoR82 w==;
X-IronPort-AV: E=McAfee;i="6200,9189,10193"; a="324590850"
X-IronPort-AV: E=Sophos;i="5.88,195,1635231600"; d="scan'208";a="324590850"
Received: from fmsmga003.fm.intel.com ([10.253.24.29])
 by fmsmga105.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 10 Dec 2021 03:09:29 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.88,195,1635231600"; d="scan'208";a="602082497"
Received: from irvmail001.ir.intel.com ([10.43.11.63])
 by FMSMGA003.fm.intel.com with ESMTP; 10 Dec 2021 03:09:24 -0800
Received: from newjersey.igk.intel.com (newjersey.igk.intel.com
 [10.102.20.203])
 by irvmail001.ir.intel.com (8.14.3/8.13.6/MailSET/Hub) with ESMTP id
 1BAB9MOF018070; Fri, 10 Dec 2021 11:09:22 GMT
From: Alexander Lobakin <alexandr.lobakin@intel.com>
To: Tony Nguyen <anthony.l.nguyen@intel.com>
Date: Fri, 10 Dec 2021 12:08:48 +0100
Message-Id: <20211210110848.708046-1-alexandr.lobakin@intel.com>
X-Mailer: git-send-email 2.33.1
In-Reply-To: <11db2426b85eb8cedd5e2d66d6399143cb382b49.camel@intel.com>
References: <20211208140702.642741-1-alexandr.lobakin@intel.com>
 <20211208140702.642741-3-alexandr.lobakin@intel.com>
 <2811b35a-9179-88ce-d87a-e1f824851494@redhat.com>
 <20211209173816.5157-1-alexandr.lobakin@intel.com>
 <11db2426b85eb8cedd5e2d66d6399143cb382b49.camel@intel.com>
MIME-Version: 1.0
Subject: Re: [Intel-wired-lan] [PATCH v4 net-next 2/9] i40e: respect
 metadata on XSK Rx to skb
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
Cc: "songliubraving@fb.com" <songliubraving@fb.com>,
 "ast@kernel.org" <ast@kernel.org>,
 "daniel@iogearbox.net" <daniel@iogearbox.net>,
 "john.fastabend@gmail.com" <john.fastabend@gmail.com>,
 "andrii@kernel.org" <andrii@kernel.org>,
 "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>,
 "brouer@redhat.com" <brouer@redhat.com>, "kuba@kernel.org" <kuba@kernel.org>,
 "hawk@kernel.org" <hawk@kernel.org>, "kpsingh@kernel.org" <kpsingh@kernel.org>,
 "yhs@fb.com" <yhs@fb.com>, "netdev@vger.kernel.org" <netdev@vger.kernel.org>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 "jbrouer@redhat.com" <jbrouer@redhat.com>, "kafai@fb.com" <kafai@fb.com>,
 "bjorn@kernel.org" <bjorn@kernel.org>,
 "bpf@vger.kernel.org" <bpf@vger.kernel.org>,
 "davem@davemloft.net" <davem@davemloft.net>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

From: Tony Nguyen <anthony.l.nguyen@intel.com>
Date: Thu, 9 Dec 2021 18:50:07 +0000

> On Thu, 2021-12-09 at 18:38 +0100, Alexander Lobakin wrote:
> > From: Jesper Dangaard Brouer <jbrouer@redhat.com>
> > Date: Thu, 9 Dec 2021 09:27:37 +0100
> > 
> > > On 08/12/2021 15.06, Alexander Lobakin wrote:
> > > > For now, if the XDP prog returns XDP_PASS on XSK, the metadata
> > > > will
> > > > be lost as it doesn't get copied to the skb.
> > > 
> > > I have an urge to add a newline here, when reading this, as IMHO it
> > > is a 
> > > paragraph with the problem statement.
> > > 
> > > > Copy it along with the frame headers. Account its size on skb
> > > > allocation, and when copying just treat it as a part of the frame
> > > > and do a pull after to "move" it to the "reserved" zone.
> > > 
> > > Also newline here, as next paragraph are some extra details, you
> > > felt a 
> > > need to explain to the reader.
> > > 
> > > > net_prefetch() xdp->data_meta and align the copy size to speed-up
> > > > memcpy() a little and better match i40e_costruct_skb().
> > >                                       ^^^^^^xx^^^^^^^^^
> > > 
> > > commit messages.
> > 
> > Oh gosh, I thought I don't have attention deficit. Thanks, maybe
> > Tony will fix it for me or I could send a follow-up (or resend if
> > needed, I saw those were already applied to dev-queue).
> 
> If there's no need for follow-ups beyond this change, I'll fix it up.

The rest is fine, thank you!

> Thanks,
> Tony
> 
> > > --Jesper
> > 
> > Al

Al
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
