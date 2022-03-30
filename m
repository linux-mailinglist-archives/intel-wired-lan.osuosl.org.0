Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 2B0C94ECA41
	for <lists+intel-wired-lan@lfdr.de>; Wed, 30 Mar 2022 19:05:22 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id D7B0540FB9;
	Wed, 30 Mar 2022 17:05:20 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id X1l_J9jyK07N; Wed, 30 Mar 2022 17:05:20 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id D18BD405AB;
	Wed, 30 Mar 2022 17:05:19 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 557AA1BF47E
 for <intel-wired-lan@lists.osuosl.org>; Wed, 30 Mar 2022 17:05:15 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 3F5B08483D
 for <intel-wired-lan@lists.osuosl.org>; Wed, 30 Mar 2022 17:05:15 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Authentication-Results: smtp1.osuosl.org (amavisd-new);
 dkim=pass (2048-bit key) header.d=intel.com
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id GohR6nOAoXKw for <intel-wired-lan@lists.osuosl.org>;
 Wed, 30 Mar 2022 17:05:14 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
Received: from mga03.intel.com (mga03.intel.com [134.134.136.65])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 2297184520
 for <intel-wired-lan@lists.osuosl.org>; Wed, 30 Mar 2022 17:05:13 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1648659914; x=1680195914;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=H4jFIKm2Scvn7/jZUOu58X66aPHnkWx8sQ0pdglcvyo=;
 b=axkfkXrdS3gfVXURtdoOuQkOMfloEm+8TzPabz5fMpH2NmboO6+Q2J2T
 //kBqC/4aPawyO5q89UpXdgn9EwFuYLpkBUVWYpnabpXM7byHJqgYsJri
 92tInYv6ZykUA5HKXVONqlxE1v5dzORUxcOROSkay40SM8feBklb/fA/Q
 YqIsp2nhr+KV5rT4EQT5m7YfXatGrkfanbo/bj6t6DhIAbhPkcp0lYQ3W
 XSdK5WTa1mj1eeESV/noVj/3M4BLfHljT6sYrCIy4U+OUDIJbNOs1ErQY
 /bw7hNIUiw7wAHIzqoqFAiCw/ulfaMGC0KZQkV0fjDUnK2ncmay+FORAn A==;
X-IronPort-AV: E=McAfee;i="6200,9189,10302"; a="259567354"
X-IronPort-AV: E=Sophos;i="5.90,223,1643702400"; d="scan'208";a="259567354"
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by orsmga103.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 30 Mar 2022 10:03:35 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.90,223,1643702400"; d="scan'208";a="565651863"
Received: from irvmail001.ir.intel.com ([10.43.11.63])
 by orsmga008.jf.intel.com with ESMTP; 30 Mar 2022 10:03:29 -0700
Received: from newjersey.igk.intel.com (newjersey.igk.intel.com
 [10.102.20.203])
 by irvmail001.ir.intel.com (8.14.3/8.13.6/MailSET/Hub) with ESMTP id
 22UH3REc030366; Wed, 30 Mar 2022 18:03:27 +0100
From: Alexander Lobakin <alexandr.lobakin@intel.com>
To: Alice Michael <alice.michael@intel.com>
Date: Wed, 30 Mar 2022 19:00:46 +0200
Message-Id: <20220330170046.3604787-1-alexandr.lobakin@intel.com>
X-Mailer: git-send-email 2.35.1
In-Reply-To: <MWHPR11MB0062B06CAE27C58EEE54F162E41F9@MWHPR11MB0062.namprd11.prod.outlook.com>
References: <20220329102752.1481125-1-ivecera@redhat.com>
 <YkL0wfgyCq5s8vdu@boxer> <20220329195522.63d332fb@ceranb>
 <MWHPR11MB0062B06CAE27C58EEE54F162E41F9@MWHPR11MB0062.namprd11.prod.outlook.com>
MIME-Version: 1.0
Subject: Re: [Intel-wired-lan] [PATCH net] ice: Fix logic of getting XSK
 pool associated with Tx queue
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
 Andrii Nakryiko <andrii@kernel.org>, Ivan Vecera <ivecera@redhat.com>,
 Daniel Borkmann <daniel@iogearbox.net>,
 John Fastabend <john.fastabend@gmail.com>,
 "moderated list:INTEL ETHERNET DRIVERS" <intel-wired-lan@lists.osuosl.org>,
 Yonghong Song <yhs@fb.com>, Paolo Abeni <pabeni@redhat.com>,
 Jesper Dangaard Brouer <hawk@kernel.org>, mschmidt <mschmidt@redhat.com>,
 KP Singh <kpsingh@kernel.org>, Jakub Kicinski <kuba@kernel.org>,
 "netdev@vger.kernel.org" <netdev@vger.kernel.org>,
 open list <linux-kernel@vger.kernel.org>,
 "David S. Miller" <davem@davemloft.net>, poros <poros@redhat.com>,
 "open list:XDP \(eXpress Data Path\)" <bpf@vger.kernel.org>,
 Martin KaFai Lau <kafai@fb.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

From: Alice Michael <alice.michael@intel.com>
Date: Wed, 30 Mar 2022 16:47:18 +0000

> > -----Original Message-----
> > From: Ivan Vecera <ivecera@redhat.com>
> > Sent: Tuesday, March 29, 2022 10:55 AM
> > To: Fijalkowski, Maciej <maciej.fijalkowski@intel.com>
> > Cc: netdev@vger.kernel.org; poros <poros@redhat.com>; mschmidt
> > <mschmidt@redhat.com>; Brandeburg, Jesse
> > <jesse.brandeburg@intel.com>; Nguyen, Anthony L
> > <anthony.l.nguyen@intel.com>; David S. Miller <davem@davemloft.net>;
> > Jakub Kicinski <kuba@kernel.org>; Paolo Abeni <pabeni@redhat.com>;
> > Alexei Starovoitov <ast@kernel.org>; Daniel Borkmann
> > <daniel@iogearbox.net>; Jesper Dangaard Brouer <hawk@kernel.org>; John
> > Fastabend <john.fastabend@gmail.com>; Andrii Nakryiko
> > <andrii@kernel.org>; Martin KaFai Lau <kafai@fb.com>; Song Liu
> > <songliubraving@fb.com>; Yonghong Song <yhs@fb.com>; KP Singh
> > <kpsingh@kernel.org>; Jeff Kirsher <jeffrey.t.kirsher@intel.com>; Krzysztof
> > Kazimierczak <krzysztof.kazimierczak@intel.com>; Lobakin, Alexandr
> > <alexandr.lobakin@intel.com>; moderated list:INTEL ETHERNET DRIVERS
> > <intel-wired-lan@lists.osuosl.org>; open list <linux-kernel@vger.kernel.org>;
> > open list:XDP (eXpress Data Path) <bpf@vger.kernel.org>
> > Subject: Re: [PATCH net] ice: Fix logic of getting XSK pool associated with Tx
> > queue
> > 
> > On Tue, 29 Mar 2022 14:00:01 +0200
> > Maciej Fijalkowski <maciej.fijalkowski@intel.com> wrote:
> > 
> > > Thanks for this fix! I did exactly the same patch yesterday and it's
> > > already applied to bpf tree:
> > >
> > > https://lore.kernel.org/bpf/20220328142123.170157-5-maciej.fijalkowski
> > > @intel.com/T/#u
> > >
> > > Maciej
> > 
> > Thanks for info... Nice human race condition ;-)
> > 
> > I.
> 
> I'm covering for Tony this week maintaining this tree.  He let me know there were a few patches you had to send Ivan and I was waiting on this one.  If I'm following correctly, this one will be dropped and the other ones are ready to be sent now to net then?

Yes, this one is beaten and the net tree already contains it[0].
There are still 3 Ivan's fixes not applied yet:
 * [1]
 * [2]
 * [3]

I'm wondering if it's worth to pass them through dev-queue since
they're urgent and have been tested already in 2 companies? They
could go directly to -net and make it into RC1.

> 
> Alice.

[0] https://git.kernel.org/pub/scm/linux/kernel/git/netdev/net.git/commit/?id=1ac2524de7b366633fc336db6c94062768d0ab03
[1] https://lore.kernel.org/netdev/20220322142554.3253428-1-ivecera@redhat.com
[2] https://lore.kernel.org/netdev/20220325132524.1765342-1-ivecera@redhat.com
[3] https://lore.kernel.org/netdev/20220325132819.1767050-1-ivecera@redhat.com

Thanks,
Al
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
