Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id CDD289CDE92
	for <lists+intel-wired-lan@lfdr.de>; Fri, 15 Nov 2024 13:45:28 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id E48054031E;
	Fri, 15 Nov 2024 12:45:24 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id kkKKpan1LqxO; Fri, 15 Nov 2024 12:45:24 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org E758F40363
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1731674724;
	bh=ghOhfYcObwPstTxN053WjSdLIkm5mznQbXq6FFQCuxs=;
	h=Date:From:To:Cc:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=5WRAKbBkYAN9WV+5JY8G7umQhl1E71VuvnE5+S8xpHh2eUBKQv6x/smgL4wRWjOsx
	 BMbol/qqqtd0bHaGsXaUYKM+yWJLEgMOMvvGDDPxBbmiazM9KWmtrO5+mpmIbmL0PC
	 IPp0R00fKPz/QlhaOwsQVxYluh7lmonh7utw4ia9MbyCpOH4WOuGDbl9z7ktLKPu8U
	 4RwFV4LMmLTkInWMyqS6Kg+IaHPFfWwg1FIXWdZEBOJZSkxclK0kwkdCSj0dDTcle8
	 I4+HV0jcbrWKPrZP8vAoY65ySo9ItViCSXrC9wAT17Cwqc/haf+cKaUmyo1TBNFHrN
	 tdatJ1Oq3xmtQ==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp4.osuosl.org (Postfix) with ESMTP id E758F40363;
	Fri, 15 Nov 2024 12:45:23 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
 by lists1.osuosl.org (Postfix) with ESMTP id 7BE3327DF
 for <intel-wired-lan@lists.osuosl.org>; Fri, 15 Nov 2024 12:45:21 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 6A0CD60B4B
 for <intel-wired-lan@lists.osuosl.org>; Fri, 15 Nov 2024 12:45:21 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id nuesiUCxjHow for <intel-wired-lan@lists.osuosl.org>;
 Fri, 15 Nov 2024 12:45:20 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom;
 client-ip=2604:1380:45d1:ec00::3; helo=nyc.source.kernel.org;
 envelope-from=horms@kernel.org; receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp3.osuosl.org AFE6F60909
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org AFE6F60909
Received: from nyc.source.kernel.org (nyc.source.kernel.org
 [IPv6:2604:1380:45d1:ec00::3])
 by smtp3.osuosl.org (Postfix) with ESMTPS id AFE6F60909
 for <intel-wired-lan@lists.osuosl.org>; Fri, 15 Nov 2024 12:45:20 +0000 (UTC)
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
 by nyc.source.kernel.org (Postfix) with ESMTP id B6C05A427A6;
 Fri, 15 Nov 2024 12:43:25 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 8C4C0C4CECF;
 Fri, 15 Nov 2024 12:45:17 +0000 (UTC)
Date: Fri, 15 Nov 2024 12:45:15 +0000
From: Simon Horman <horms@kernel.org>
To: Willem de Bruijn <willemdebruijn.kernel@gmail.com>
Cc: Milena Olech <milena.olech@intel.com>, intel-wired-lan@lists.osuosl.org,
 netdev@vger.kernel.org, anthony.l.nguyen@intel.com,
 przemyslaw.kitszel@intel.com, Emil Tantilov <emil.s.tantilov@intel.com>,
 Pavan Kumar Linga <pavan.kumar.linga@intel.com>,
 Alexander Lobakin <aleksander.lobakin@intel.com>
Message-ID: <20241115124515.GO1062410@kernel.org>
References: <20241113154616.2493297-1-milena.olech@intel.com>
 <20241113154616.2493297-8-milena.olech@intel.com>
 <6736625792e20_3379ce2948b@willemb.c.googlers.com.notmuch>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <6736625792e20_3379ce2948b@willemb.c.googlers.com.notmuch>
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=kernel.org; s=k20201202; t=1731674719;
 bh=zMOM1PAqWE7rZ59eadQ4Q40wY9FxpTUefPj94OxfR00=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=RdMQlEbxjbB1mH5/lrhQKDG7URM4ArRfVUOqfnOcyA5XwTIrXyHUQB56Ws+TLW5az
 bSU/uxBxpEGLGhgj/v/nBhhrvEO6jQqJ9NpbrQc0V4u1pXMJHq0ihRtXaU1RA+dXyC
 bvR0HgDUpKuxSdvENTWyyt2KCUb+q2OJjzJ3sZDclP/W6U6CCXq4jbdl2WA2Fx8hpR
 67yyJvbAedwmOAhbzrkzAUG4+NS7Fu3QXBpClOiJWlJaSeLEAhg6NkkDgpVkrI8UW0
 cN03fudnFcBfXs47rdWHom2ozXps3DmxOFKPwCJb6oA7XHv8m4YT27PQqp28OEm8Tq
 u+pqlK6a1LIDA==
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dmarc=pass (p=quarantine dis=none)
 header.from=kernel.org
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org
 header.a=rsa-sha256 header.s=k20201202 header.b=RdMQlEbx
Subject: Re: [Intel-wired-lan] [PATCH iwl-net 07/10] idpf: add Tx timestamp
 capabilities negotiation
X-BeenThere: intel-wired-lan@osuosl.org
X-Mailman-Version: 2.1.30
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
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

On Thu, Nov 14, 2024 at 03:49:27PM -0500, Willem de Bruijn wrote:
> Milena Olech wrote:
> > Tx timestamp capabilities are negotiated for the uplink Vport.
> > Driver receives information about the number of available Tx timestamp
> > latches, the size of Tx timestamp value and the set of indexes used
> > for Tx timestamping.
> > 
> > Add function to get the Tx timestamp capabilities and parse the uplink
> > vport flag.
> > 
> > Co-developed-by: Emil Tantilov <emil.s.tantilov@intel.com>
> > Signed-off-by: Emil Tantilov <emil.s.tantilov@intel.com>
> > Co-developed-by: Pavan Kumar Linga <pavan.kumar.linga@intel.com>
> > Signed-off-by: Pavan Kumar Linga <pavan.kumar.linga@intel.com>
> > Reviewed-by: Alexander Lobakin <aleksander.lobakin@intel.com>
> > Signed-off-by: Milena Olech <milena.olech@intel.com>
> 
> A few minor points. No big concerns from me.
> 
> >  struct idpf_vc_xn_manager;
> >  
> > +#define idpf_for_each_vport(adapter, iter) \
> > +	for (struct idpf_vport **__##iter = &(adapter)->vports[0], \
> > +	     *iter = *__##iter; \
> > +	     __##iter < &(adapter)->vports[(adapter)->num_alloc_vports]; \
> > +	     iter = *(++__##iter))
> > +
> 
> Perhaps more readable to just use an int:
> 
>     for (int i = 0; iter = &(adapter)->vports[i], i < (adapter)->num_alloc_vports; i++)
> 
> >  /**
> > @@ -517,6 +524,60 @@ static int idpf_ptp_create_clock(const struct idpf_adapter *adapter)
> >  	return 0;
> >  }
> >  
> > +/**
> > + * idpf_ptp_release_vport_tstamp - Release the Tx timestamps trakcers for a
> 
> s/trakcers/trackers
> 
> > +/**
> > + * struct idpf_ptp_tx_tstamp - Parametrs for Tx timestamping
> 
> s/Parametrs/Parameters
> 
> > + * @list_member: the list member strutcure
> 
> s/strutcure/Structure
> 
> Please use a spell checker, don't rely on reviewers.

To add to that:

* Capabilities is misspelt in the subject
* checkpatch.pl --codespell will spell-check the patch

> 
> Also, going forward, IMHO documentation can be limited to APIs and
> non-obvious functions/structs/fields.
> 
