Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [IPv6:2605:bc80:3010::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 4B3607AE510
	for <lists+intel-wired-lan@lfdr.de>; Tue, 26 Sep 2023 07:31:20 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id AD4EA41788;
	Tue, 26 Sep 2023 05:31:18 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org AD4EA41788
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1695706278;
	bh=ZGQgvfelL7OKwfILp1jrWb50WzqdpTCIyNMM0+fZp68=;
	h=In-Reply-To:References:Date:From:To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=grtQU9nZTlDFYUaR8js2iz6lRRERUTUgsn/bqftykO8QHD9IVVJIipI7ln8BrmrIQ
	 HDH669CAGIir1klDk24oZ33kDHpXXuWOWL8JpROXn/te2nCMlbHGLGH7sriHv85AWj
	 GH2V0/2prZNyf5xX7CcAlYdGOneXc5D4Sfg/2NBtRtMt5sQ1JLbtq0U0gsAYOiPeoE
	 RkmvjbMPzG8CFtUwCmirKdvWZ08b/EuG1N4ko452t/SqKGNbD2deGDvJyPJSD5jdmc
	 7PCkHE9VSoYlFGiEqo4+xgBnRfiKlokZM74OXABmYPRLTQgz/pm0TcaEqEy2yPaZal
	 7rvNl+nrrHNOA==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id AQ7Msw3JMD3O; Tue, 26 Sep 2023 05:31:18 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id A18A440377;
	Tue, 26 Sep 2023 05:31:17 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org A18A440377
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 3067B1BF33C
 for <intel-wired-lan@lists.osuosl.org>; Tue, 26 Sep 2023 05:31:13 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 9C9B740377
 for <intel-wired-lan@lists.osuosl.org>; Tue, 26 Sep 2023 05:31:12 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 9C9B740377
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id xKqn2vQ_a9Pf for <intel-wired-lan@lists.osuosl.org>;
 Tue, 26 Sep 2023 05:31:10 +0000 (UTC)
Received: from wout1-smtp.messagingengine.com (wout1-smtp.messagingengine.com
 [64.147.123.24])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 5CE10400E4
 for <intel-wired-lan@lists.osuosl.org>; Tue, 26 Sep 2023 05:31:10 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 5CE10400E4
Received: from compute6.internal (compute6.nyi.internal [10.202.2.47])
 by mailout.west.internal (Postfix) with ESMTP id EF56E320090C;
 Tue, 26 Sep 2023 01:31:07 -0400 (EDT)
Received: from imap51 ([10.202.2.101])
 by compute6.internal (MEProxy); Tue, 26 Sep 2023 01:31:09 -0400
X-ME-Sender: <xms:mmwSZTVghbF32WRAKRgAyfWzy4y1GfmjS8JuhNOKHtecWzsBbn3XLA>
 <xme:mmwSZbmwC1nALxp__4Ya1BWxso5fw2MnrvXUqIkjGliS6K-UP_5Wx2JsFet1OUQ1s
 f_1VgqHvR2VJjXNdE8>
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgedviedrudelhedgleehucetufdoteggodetrfdotf
 fvucfrrhhofhhilhgvmecuhfgrshhtofgrihhlpdfqfgfvpdfurfetoffkrfgpnffqhgen
 uceurghilhhouhhtmecufedttdenucesvcftvggtihhpihgvnhhtshculddquddttddmne
 cujfgurhepofgfggfkjghffffhvfevufgtsehttdertderredtnecuhfhrohhmpedftehr
 nhguuceuvghrghhmrghnnhdfuceorghrnhgusegrrhhnuggsrdguvgeqnecuggftrfgrth
 htvghrnhepvefhffeltdegheeffffhtdegvdehjedtgfekueevgfduffettedtkeekueef
 hedunecuffhomhgrihhnpehkvghrnhgvlhdrohhrghenucevlhhushhtvghrufhiiigvpe
 dtnecurfgrrhgrmhepmhgrihhlfhhrohhmpegrrhhnugesrghrnhgusgdruggv
X-ME-Proxy: <xmx:mmwSZfbMrLoKSttKyEJ46uhu8vQqLGpv1Rgql82DMu_5I5kLhz2IYg>
 <xmx:mmwSZeW0Y0fEGyS7H_B5cfErFBpT_gFUO08Mx52R2PQcyTPQ_UqqEA>
 <xmx:mmwSZdmHWY_7cvi7WA1_DzrVCTO0BcEzTvFwUK5EnluvmVQoSki_fg>
 <xmx:m2wSZfk0BYJTUS4OFn-LdMOs-UsqUg5jphgMa2W3YrTiMxIWwGgUtg>
Feedback-ID: i56a14606:Fastmail
Received: by mailuser.nyi.internal (Postfix, from userid 501)
 id A1582B60089; Tue, 26 Sep 2023 01:31:06 -0400 (EDT)
X-Mailer: MessagingEngine.com Webmail Interface
User-Agent: Cyrus-JMAP/3.9.0-alpha0-957-ga1ccdb4cff-fm-20230919.001-ga1ccdb4c
MIME-Version: 1.0
Message-Id: <acd2ae60-2afb-42f5-8bdc-92eae1f77ddb@app.fastmail.com>
In-Reply-To: <CO1PR11MB50895BBE115A20B1A1EEC603D6FCA@CO1PR11MB5089.namprd11.prod.outlook.com>
References: <20230925155538.526317-1-arnd@kernel.org>
 <CO1PR11MB50895BBE115A20B1A1EEC603D6FCA@CO1PR11MB5089.namprd11.prod.outlook.com>
Date: Tue, 26 Sep 2023 07:30:45 +0200
From: "Arnd Bergmann" <arnd@arndb.de>
To: "Jacob Keller" <jacob.e.keller@intel.com>,
 "Arnd Bergmann" <arnd@kernel.org>,
 "Brandeburg, Jesse" <jesse.brandeburg@intel.com>,
 "Nguyen, Anthony L" <anthony.l.nguyen@intel.com>
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=arndb.de; h=cc
 :cc:content-type:content-type:date:date:from:from:in-reply-to
 :in-reply-to:message-id:mime-version:references:reply-to:sender
 :subject:subject:to:to; s=fm1; t=1695706267; x=1695792667; bh=+g
 wuMGgepO2RPz72IJGIp9DWb5TMyaffGVqSG2KwnWw=; b=rGfDUCl1MfIYTh8DZx
 rlgpEsGW5zSjfCuoSSAFLBIx6bpKlQqzDi9qVp43ZJwJ+Cj3ZqWyov/aVyPyEfZF
 mFLV9tJYs5xExuB3uVP5xW1P/VBUGlNbXqORUihFLMDr+hp4RrAM+nSEMwh2o+ab
 odEK/MyzDWT4nrjWZ72vCJ4lhdxVzHZtgRHmXwX4+vUKAqeEuinl0JGbouala0xd
 +4M0fWGZGoL1ngutt/lTwL8bymTeITSqT+QtuHITbFt6kMDoA3HVu2dwUKraAfyO
 680mHK4ObiqP91OL2QqTJseY/Vf3pO3TE1uNYnHQWRVYuq9OEsttX4/F4+QTOuS7
 z11w==
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
 messagingengine.com; h=cc:cc:content-type:content-type:date:date
 :feedback-id:feedback-id:from:from:in-reply-to:in-reply-to
 :message-id:mime-version:references:reply-to:sender:subject
 :subject:to:to:x-me-proxy:x-me-proxy:x-me-sender:x-me-sender
 :x-sasl-enc; s=fm2; t=1695706267; x=1695792667; bh=+gwuMGgepO2RP
 z72IJGIp9DWb5TMyaffGVqSG2KwnWw=; b=RlCrIFkbuj9JYJJPmtXcH2nO9vvqq
 U39v7BZvIqaK+6FWlOlmp2ZXEc0CWyqVFUJkmM2EKjmoImzTzxXkIwHU3LhWjPXi
 qj6apIgqS7yisGYscmcAmcaIljRv48DHTTvbFPVrsfoHsoxmhNRtxkOm9wPn1JhJ
 TTkgZixJPSwiLcjxhfwwtz0fR3c02bEx/ZG0jTDU5hxgRgYJbT4l6SIHQTMDBTiO
 khln79W6z7RkkT0TjyGSBYsiu+U3eg0Ds+2OgISN/681OQnPCYrHCF0fThts4mq2
 MLuhUB2pv8acyUKbKjH32rR8KtPsVATZ54NSnUsC+ESatxXuLzhooqMhA==
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key, unprotected) header.d=arndb.de header.i=@arndb.de
 header.a=rsa-sha256 header.s=fm1 header.b=rGfDUCl1; 
 dkim=pass (2048-bit key,
 unprotected) header.d=messagingengine.com header.i=@messagingengine.com
 header.a=rsa-sha256 header.s=fm2 header.b=RlCrIFkb
Subject: Re: [Intel-wired-lan] [PATCH] ice: require PTP clock for building
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
Cc: Vadim Fedorenko <vadim.fedorenko@linux.dev>, Jiri Pirko <jiri@resnulli.us>,
 "Michalik, Michal" <michal.michalik@intel.com>,
 Netdev <netdev@vger.kernel.org>, "Hay, Joshua A" <joshua.a.hay@intel.com>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>, "Kubalewski,
 Arkadiusz" <arkadiusz.kubalewski@intel.com>,
 Eric Dumazet <edumazet@google.com>,
 "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>,
 Jakub Kicinski <kuba@kernel.org>, Paolo Abeni <pabeni@redhat.com>,
 "David S . Miller" <davem@davemloft.net>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

On Mon, Sep 25, 2023, at 23:49, Keller, Jacob E wrote:
>> From: Arnd Bergmann <arnd@arndb.de>
>> 
>> I tried rearranging the code to allow building it again, but this was getting
>> too complicated for an outsider, so just enforce the dependency to fix randconfig
>> builds again, until someone wants to clean this up again.
>> 
> https://lore.kernel.org/netdev/20230921000633.1238097-1-jacob.e.keller@intel.com/
>
> My method keeps the PTP dependency optional and instead disables the 
> features that required PTP.
>

Ok, that's clearly better than mine then.

     Arnd
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
