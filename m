Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 994B6822C15
	for <lists+intel-wired-lan@lfdr.de>; Wed,  3 Jan 2024 12:27:59 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 9FE8482201;
	Wed,  3 Jan 2024 11:27:57 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 9FE8482201
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1704281277;
	bh=pURSsn42YASyjShYaXFji90kv1W3zA6MqwSIHytkY6k=;
	h=In-Reply-To:References:Date:From:To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=uE4umQaMEdADP8NzenAw7FJiQzzg5rn4rCUn5fAfQ6HMjD3FqFyL/hyyiA9ANsP+r
	 cIWDx67NNJ2X3tnZ5b5CH1rWa4awGJYLHZT92ZiJCcAtCWxl93rE4xUL8V7LGLyF65
	 tybOnjrDZWGFjo0cVpNCdPK+JPhPVvw2skbFkKUXtIH3JBW8JU6eWhVqMuBFDBNKBt
	 LmwIZyVucpCINpBBinlqWAVaDuebT707zwhh/fNiLNCBFhsfU2vwf+AVEzbup08W06
	 2wejVAbuXUpetdifGH/08n53S4glJkDo1xygVuZ3o5eNUvJHPQ8rEPY9GE4HxtQ/QU
	 fqRndzxFXJRWQ==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
	by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id vxHYkNeP0B5n; Wed,  3 Jan 2024 11:27:56 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id 377C6821ED;
	Wed,  3 Jan 2024 11:27:56 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 377C6821ED
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 8045B1BF20D
 for <intel-wired-lan@lists.osuosl.org>; Wed,  3 Jan 2024 11:27:50 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 4A89E40147
 for <intel-wired-lan@lists.osuosl.org>; Wed,  3 Jan 2024 11:27:50 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 4A89E40147
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id Sr-N30wtxq6I for <intel-wired-lan@lists.osuosl.org>;
 Wed,  3 Jan 2024 11:27:49 +0000 (UTC)
X-Greylist: delayed 452 seconds by postgrey-1.37 at util1.osuosl.org;
 Wed, 03 Jan 2024 11:27:49 UTC
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 12E904000E
Received: from out4-smtp.messagingengine.com (out4-smtp.messagingengine.com
 [66.111.4.28])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 12E904000E
 for <intel-wired-lan@lists.osuosl.org>; Wed,  3 Jan 2024 11:27:49 +0000 (UTC)
Received: from compute5.internal (compute5.nyi.internal [10.202.2.45])
 by mailout.nyi.internal (Postfix) with ESMTP id A52445C01B3;
 Wed,  3 Jan 2024 06:20:11 -0500 (EST)
Received: from imap51 ([10.202.2.101])
 by compute5.internal (MEProxy); Wed, 03 Jan 2024 06:20:11 -0500
X-ME-Sender: <xms:60KVZbdhEAWYmjrIFrdGSQ2sj_mVdqoTzTYah8F4j7_DlhX0ARREbQ>
 <xme:60KVZRMhbu4YCMbfPMGTcIzliLDg4h_uMFSifraI9pZiSIkbkd03xGxJ6ymBmxt_I
 rELdQD8QBMsF0dLQUk>
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgedvkedrvdeghedgvdejucetufdoteggodetrfdotf
 fvucfrrhhofhhilhgvmecuhfgrshhtofgrihhlpdfqfgfvpdfurfetoffkrfgpnffqhgen
 uceurghilhhouhhtmecufedttdenucesvcftvggtihhpihgvnhhtshculddquddttddmne
 cujfgurhepofgfggfkjghffffhvfevufgtsehttdertderredtnecuhfhrohhmpedftehr
 nhguuceuvghrghhmrghnnhdfuceorghrnhgusegrrhhnuggsrdguvgeqnecuggftrfgrth
 htvghrnhepvefhffeltdegheeffffhtdegvdehjedtgfekueevgfduffettedtkeekueef
 hedunecuffhomhgrihhnpehkvghrnhgvlhdrohhrghenucevlhhushhtvghrufhiiigvpe
 dtnecurfgrrhgrmhepmhgrihhlfhhrohhmpegrrhhnugesrghrnhgusgdruggv
X-ME-Proxy: <xmx:60KVZUh_f2VP4sA3WEv3PIk-btw0PRX6d4s0yc_sZc3KVTUIn6ZbwQ>
 <xmx:60KVZc9N587-YLpnmIzzjrAna-6-dL4UlvVVw3W2gNkTzvgPHq7U-A>
 <xmx:60KVZXvfe2FcwdAq1MI7aZDwQ_SesO7RkKTy29yA3_mc3f8X_aoXUA>
 <xmx:60KVZXEplb9W-61xCi7E_hgXj8mIat1e_CooVTvFlmTxo-tCObMx8Q>
Feedback-ID: i56a14606:Fastmail
Received: by mailuser.nyi.internal (Postfix, from userid 501)
 id 0C00CB6008F; Wed,  3 Jan 2024 06:20:10 -0500 (EST)
X-Mailer: MessagingEngine.com Webmail Interface
User-Agent: Cyrus-JMAP/3.9.0-alpha0-1364-ga51d5fd3b7-fm-20231219.001-ga51d5fd3
MIME-Version: 1.0
Message-Id: <c66dd905-3342-44ff-9aa7-ff2c7b9024c7@app.fastmail.com>
In-Reply-To: <ZZU87SZcE/6i8lyo@boxer>
References: <20240103102458.3687963-1-arnd@kernel.org> <ZZU87SZcE/6i8lyo@boxer>
Date: Wed, 03 Jan 2024 12:19:50 +0100
From: "Arnd Bergmann" <arnd@arndb.de>
To: "Maciej Fijalkowski" <maciej.fijalkowski@intel.com>,
 "Arnd Bergmann" <arnd@kernel.org>
Content-Type: text/plain
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=arndb.de; h=cc
 :cc:content-type:content-type:date:date:from:from:in-reply-to
 :in-reply-to:message-id:mime-version:references:reply-to:subject
 :subject:to:to; s=fm1; t=1704280811; x=1704367211; bh=pURSsn42YA
 SyjShYaXFji90kv1W3zA6MqwSIHytkY6k=; b=siv4dEvUTdBa5tvrhjfr+0AqUz
 MC+yLr0d/hie2ElJdhXE9U9i8FdAlYhNaIEZmQeU+lNJct2lmqOdDgG+nRXE5BsM
 C5FklLlR8QJTIAZDb3dj/PPrWr5DVY4x/HhO6TtjYHj+QUOk2vZm0sh2Vj6WXydu
 n4q3vm4M3wha7rsHEyNFxcGjCH3xc1Isk7KRS6HIXHsFAcOxb2k8hTFwneI5+15Z
 gobIeGOZT+UymSBgtLf9wiN1FcAu8RUU59qpQwF8O66etIKmvILPllLQaTBdd40r
 YNcgJOYfxWSWgPIIs6sOnKJ435C+gG/P6CaoTcRVXnHxJOCLVonBVe8QOKlA==
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
 messagingengine.com; h=cc:cc:content-type:content-type:date:date
 :feedback-id:feedback-id:from:from:in-reply-to:in-reply-to
 :message-id:mime-version:references:reply-to:subject:subject:to
 :to:x-me-proxy:x-me-proxy:x-me-sender:x-me-sender:x-sasl-enc; s=
 fm2; t=1704280811; x=1704367211; bh=pURSsn42YASyjShYaXFji90kv1W3
 zA6MqwSIHytkY6k=; b=4skXX/n4oIK9krhbABBIURU/f98yOhCL/oPYgI5oU5Z+
 VkaXh/klpi0UAZRtaSn046r9uHggozA+xgWjGwjw8GyFFcnCJ4wFlvwTOfTy2Y9S
 V/0QmRnrOXtt7YY682YRc/SkAfdtIpbnwMNv7zpU+966o8rzMfhHRB7qsNaod7VR
 qMBTBB77FWBtf18fC1KSHS0ZDY9ylin/rdXIacfPPF57FrIZacSWv1LOkoSOCFwZ
 fmIxT7vVeyni6WpHWrke4MvSnErl695+OZEsboiu7aJ7MV/RcWaarE7toqN0kOE1
 hVJ9w+2aj2yhVB4HDNgCgc2+uIhDDb7p1RnCdIcJPw==
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key, unprotected) header.d=arndb.de header.i=@arndb.de
 header.a=rsa-sha256 header.s=fm1 header.b=siv4dEvU; 
 dkim=pass (2048-bit key,
 unprotected) header.d=messagingengine.com header.i=@messagingengine.com
 header.a=rsa-sha256 header.s=fm2 header.b=4skXX/n4
Subject: Re: [Intel-wired-lan] [PATCH] ice: fix building withouto XDP
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
Cc: Amritha Nambiar <amritha.nambiar@intel.com>,
 Daniel Borkmann <daniel@iogearbox.net>,
 Larysa Zaremba <larysa.zaremba@intel.com>,
 "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>,
 Jesse Brandeburg <jesse.brandeburg@intel.com>,
 Alexei Starovoitov <ast@kernel.org>, Eric Dumazet <edumazet@google.com>,
 Anthony L Nguyen <anthony.l.nguyen@intel.com>, Simon Horman <horms@kernel.org>,
 Netdev <netdev@vger.kernel.org>, Jakub Kicinski <kuba@kernel.org>,
 Paolo Abeni <pabeni@redhat.com>, Piotr Raczynski <piotr.raczynski@intel.com>,
 "David S . Miller" <davem@davemloft.net>, linux-kernel@vger.kernel.org
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

On Wed, Jan 3, 2024, at 11:54, Maciej Fijalkowski wrote:
> On Wed, Jan 03, 2024 at 11:24:45AM +0100, Arnd Bergmann wrote:
>> From: Arnd Bergmann <arnd@arndb.de>
>> 
>> The newly added function fails to build when struct xsk_cb_desc is
>> not defined:
>> 
>> drivers/net/ethernet/intel/ice/ice_base.c: In function 'ice_xsk_pool_fill_cb':
>> drivers/net/ethernet/intel/ice/ice_base.c:525:16: error: variable 'desc' has initializer but incomplete type
>> 
>> Hide this part in the same #ifdef that controls the structure definition.
>
> Hey Arnd,
>
> this has been fixed by Vladimir:
> https://lore.kernel.org/netdev/20231219110205.1289506-1-vladimir.oltean@nxp.com/
>
> in a way that we don't have to wrap driver code with ifdefs.

Ok, sounds good.

    Arnd
