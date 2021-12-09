Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 9B79C46F237
	for <lists+intel-wired-lan@lfdr.de>; Thu,  9 Dec 2021 18:38:50 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id 23EEB42197;
	Thu,  9 Dec 2021 17:38:49 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id qntxd-95Jwg0; Thu,  9 Dec 2021 17:38:48 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id 0696542195;
	Thu,  9 Dec 2021 17:38:48 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id D9ED71BF387
 for <intel-wired-lan@lists.osuosl.org>; Thu,  9 Dec 2021 17:38:42 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id BFD0361CC1
 for <intel-wired-lan@lists.osuosl.org>; Thu,  9 Dec 2021 17:38:42 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Authentication-Results: smtp3.osuosl.org (amavisd-new);
 dkim=pass (2048-bit key) header.d=intel.com
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id Db2xDL0-Uh7h for <intel-wired-lan@lists.osuosl.org>;
 Thu,  9 Dec 2021 17:38:42 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
Received: from mga05.intel.com (mga05.intel.com [192.55.52.43])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 3EB9F61CC0
 for <intel-wired-lan@lists.osuosl.org>; Thu,  9 Dec 2021 17:38:42 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1639071522; x=1670607522;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=GW8eLCzIYcPKkn65ZA+HWRTXMBZawug5TiMgnaXmBGc=;
 b=EoR3lehxCehuRi0dOIfPUXahxV1RRRGnnyeOpG5E/7HZTlRql53erYxp
 974AbP55HHO3wC8TBU/03guiwdzHSw7drMDuueG5tZq8DtU/B9GPhGXFy
 5jLWK9Ci4J4rC/a70MQMEJ7G4IZh86M25gBin3QxievOtVOBHKtFv70ZB
 mKn1nYCfCRAFCs25Ii/PCUwbzCry6HcIjzwFjCEmP+kYJB9ZkSP5drd4N
 It+CIiDGm3QPvrD31relijcMb7iWBXZMQ7IMiVZa7OOl7xNGQv5YtbvFT
 lsevOKImG/O9sR2+P7YfblofsjrKCZO6yQclM9oD6D1krko0rJ8WMKq6T A==;
X-IronPort-AV: E=McAfee;i="6200,9189,10193"; a="324426102"
X-IronPort-AV: E=Sophos;i="5.88,193,1635231600"; d="scan'208";a="324426102"
Received: from orsmga007.jf.intel.com ([10.7.209.58])
 by fmsmga105.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 09 Dec 2021 09:38:41 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.88,193,1635231600"; d="scan'208";a="503581282"
Received: from irvmail001.ir.intel.com ([10.43.11.63])
 by orsmga007.jf.intel.com with ESMTP; 09 Dec 2021 09:38:35 -0800
Received: from newjersey.igk.intel.com (newjersey.igk.intel.com
 [10.102.20.203])
 by irvmail001.ir.intel.com (8.14.3/8.13.6/MailSET/Hub) with ESMTP id
 1B9HcXEn013933; Thu, 9 Dec 2021 17:38:33 GMT
From: Alexander Lobakin <alexandr.lobakin@intel.com>
To: Jesper Dangaard Brouer <jbrouer@redhat.com>
Date: Thu,  9 Dec 2021 18:38:16 +0100
Message-Id: <20211209173816.5157-1-alexandr.lobakin@intel.com>
X-Mailer: git-send-email 2.33.1
In-Reply-To: <2811b35a-9179-88ce-d87a-e1f824851494@redhat.com>
References: <20211208140702.642741-1-alexandr.lobakin@intel.com>
 <20211208140702.642741-3-alexandr.lobakin@intel.com>
 <2811b35a-9179-88ce-d87a-e1f824851494@redhat.com>
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
Cc: Song Liu <songliubraving@fb.com>, Alexei Starovoitov <ast@kernel.org>,
 Andrii Nakryiko <andrii@kernel.org>, Daniel Borkmann <daniel@iogearbox.net>,
 John Fastabend <john.fastabend@gmail.com>, intel-wired-lan@lists.osuosl.org,
 brouer@redhat.com, Yonghong Song <yhs@fb.com>,
 Jesper Dangaard Brouer <hawk@kernel.org>, KP Singh <kpsingh@kernel.org>,
 Jakub Kicinski <kuba@kernel.org>, netdev@vger.kernel.org,
 linux-kernel@vger.kernel.org, "David S. Miller" <davem@davemloft.net>,
 =?UTF-8?B?QmrDtnJuIFTDtnBlbA==?= <bjorn@kernel.org>, bpf@vger.kernel.org,
 Martin KaFai Lau <kafai@fb.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

From: Jesper Dangaard Brouer <jbrouer@redhat.com>
Date: Thu, 9 Dec 2021 09:27:37 +0100

> On 08/12/2021 15.06, Alexander Lobakin wrote:
> > For now, if the XDP prog returns XDP_PASS on XSK, the metadata will
> > be lost as it doesn't get copied to the skb.
> 
> I have an urge to add a newline here, when reading this, as IMHO it is a 
> paragraph with the problem statement.
> 
> > Copy it along with the frame headers. Account its size on skb
> > allocation, and when copying just treat it as a part of the frame
> > and do a pull after to "move" it to the "reserved" zone.
> 
> Also newline here, as next paragraph are some extra details, you felt a 
> need to explain to the reader.
> 
> > net_prefetch() xdp->data_meta and align the copy size to speed-up
> > memcpy() a little and better match i40e_costruct_skb().
>                                       ^^^^^^xx^^^^^^^^^
> 
> You have a general misspelling of this function name in all of your 
> commit messages.

Oh gosh, I thought I don't have attention deficit. Thanks, maybe
Tony will fix it for me or I could send a follow-up (or resend if
needed, I saw those were already applied to dev-queue).

> 
> --Jesper

Al
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
