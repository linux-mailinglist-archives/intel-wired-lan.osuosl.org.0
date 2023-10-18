Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id DA9797CD15A
	for <lists+intel-wired-lan@lfdr.de>; Wed, 18 Oct 2023 02:35:02 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 74D9B813D7;
	Wed, 18 Oct 2023 00:35:01 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 74D9B813D7
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1697589301;
	bh=v73OVB1JVyc5ZSyFXFdQPHkShb8Tb8doulWAIzCYtR8=;
	h=Date:From:To:In-Reply-To:References:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=VtaGnI4WcSUi3UhSlceepYwe+/VcylkOgOmyY+k7ScedgKJ0FLYasjbCgITtqwKud
	 gZV/x+YTU5Bs9yCPt+T3v8ECmvEFHKkvDU6meWN0L2r9+v4AsrStay8MDt5E/h4/Ni
	 dHPS8+GSnE8hV0hevabbw/K5VNMOtxOG583HE/QbIkyKUuk2cxfDKL+W/KZqD++4DK
	 Hp+XI5RddpBk2TpW01bmumYGrA2UPyzZ+jLI0irD3KtPCQYveuCf1NG22pWUpyVIdJ
	 4v/Yf7pJqDBD6lcCMGH9lSIt+qdlojBlfalurYl367oz3cAL64aJxnsl8FKRUgdlV8
	 kez7U6JiJsXcQ==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
	by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id WKvTucjssIKu; Wed, 18 Oct 2023 00:35:00 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id 522F4813D1;
	Wed, 18 Oct 2023 00:35:00 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 522F4813D1
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 0BFA61BF982
 for <intel-wired-lan@lists.osuosl.org>; Wed, 18 Oct 2023 00:34:56 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id E3D81813D1
 for <intel-wired-lan@lists.osuosl.org>; Wed, 18 Oct 2023 00:34:55 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org E3D81813D1
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id bsoQ4eQnwA1t for <intel-wired-lan@lists.osuosl.org>;
 Wed, 18 Oct 2023 00:34:55 +0000 (UTC)
Received: from dfw.source.kernel.org (dfw.source.kernel.org [139.178.84.217])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 1BA2480DA5
 for <intel-wired-lan@lists.osuosl.org>; Wed, 18 Oct 2023 00:34:55 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 1BA2480DA5
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
 by dfw.source.kernel.org (Postfix) with ESMTP id 5EA4B61582;
 Wed, 18 Oct 2023 00:34:51 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id C75D7C433C7;
 Wed, 18 Oct 2023 00:34:49 +0000 (UTC)
Date: Tue, 17 Oct 2023 17:34:48 -0700
From: Jakub Kicinski <kuba@kernel.org>
To: Alexander Duyck <alexander.duyck@gmail.com>
Message-ID: <20231017173448.3f1c35aa@kernel.org>
In-Reply-To: <CAKgT0Ud4PX1Y6GO9rW+Nvr_y862Cbv3Fpn+YX4wFHEos9rugJA@mail.gmail.com>
References: <20231016154937.41224-1-ahmed.zaki@intel.com>
 <20231016154937.41224-2-ahmed.zaki@intel.com>
 <8d1b1494cfd733530be887806385cde70e077ed1.camel@gmail.com>
 <26812a57-bdd8-4a39-8dd2-b0ebcfd1073e@intel.com>
 <CAKgT0Ud7JjUiE32jJbMbBGVexrndSCepG54PcGYWHJ+OC9pOtQ@mail.gmail.com>
 <14feb89d-7b4a-40c5-8983-5ef331953224@intel.com>
 <CAKgT0UfcT5cEDRBzCxU9UrQzbBEgFt89vJZjz8Tow=yAfEYERw@mail.gmail.com>
 <20231016163059.23799429@kernel.org>
 <CAKgT0Udyvmxap_F+yFJZiY44sKi+_zOjUjbVYO=TqeW4p0hxrA@mail.gmail.com>
 <20231017131727.78e96449@kernel.org>
 <CAKgT0Ud4PX1Y6GO9rW+Nvr_y862Cbv3Fpn+YX4wFHEos9rugJA@mail.gmail.com>
MIME-Version: 1.0
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=kernel.org; s=k20201202; t=1697589290;
 bh=s4c03elfdERBy4zrtDjx6kCMTKW/KWYHfHp4XQimaus=;
 h=Date:From:To:Cc:Subject:In-Reply-To:References:From;
 b=sczVb/vvpGtFXEO6D/aIRYs6n+ceGsHSEAVInJOS4taE/yqBzcR7cEMIqfeEVMzdM
 Jgxk85NBx9FHN/Rac39XbEFHtqeXPl7CJ/T5L1Nck9hjW9I4goczq3S+81K6XN/XS/
 cMqi0l/3qiDUf4UbOedAOOwY6Amm9U/Uvma2dzr0Q5RZPnPCwo6qomMiloQB7EzWMg
 +M9ipIhle6TQmYJJ8rt5Gccm3F6Mz0InbfExeduA0vZiVd2ff7jlwPyP/q5JBAbA+T
 AvypWJ1+EklpA2wbdzRXaIzVj/+P+S7VBcos/cnI9wsZal3ZUNex4+vKiNk1Q8ci3Z
 T8QBNTWEKNIcA==
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org
 header.a=rsa-sha256 header.s=k20201202 header.b=sczVb/vv
Subject: Re: [Intel-wired-lan] [PATCH net-next v4 1/6] net: ethtool: allow
 symmetric-xor RSS hash for any flow type
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
Cc: mkubecek@suse.cz, andrew@lunn.ch, willemdebruijn.kernel@gmail.com,
 Wojciech Drewek <wojciech.drewek@intel.com>, corbet@lwn.net,
 netdev@vger.kernel.org, linux-doc@vger.kernel.org, jesse.brandeburg@intel.com,
 Ahmed Zaki <ahmed.zaki@intel.com>, edumazet@google.com,
 anthony.l.nguyen@intel.com, horms@kernel.org, vladimir.oltean@nxp.com,
 intel-wired-lan@lists.osuosl.org, pabeni@redhat.com, davem@davemloft.net
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

On Tue, 17 Oct 2023 13:41:18 -0700 Alexander Duyck wrote:
> I am thinking of this from a software engineering perspective. This
> symmetric-xor aka simplified-toeplitz is actually much cheaper to
> implement in software than the original. As such I would want it to be
> considered a separate algorithm as I could make use of something like
> that when having to implement RSS in QEMU for instance.

That's exactly why XOR and CRC32 _algorithms_ already exist.
CPUs have instructions to do them word at a time. 

	ETH_RSS_HASH_TOP_BIT, /* Configurable RSS hash function -
	Toeplitz */
	ETH_RSS_HASH_XOR_BIT, /* Configurable RSS hash function - Xor */
	ETH_RSS_HASH_CRC32_BIT, /* Configurable RSS hash function - Crc32 */

If efficient SW implementation is important why do some weird
bastardized para-toeplitz and not crc32? Hashes fairly well
from what I recall with the older NFPs. x86 has an instruction
for it, IIRC it was part of SSE but on normal registers.

> Based on earlier comments it doesn't change the inputs, it just
> changes how I have to handle the data and the key. It starts reducing
> things down to something like the Intel implementation of Flow
> Director in terms of how the key gets generated and hashed.

About Flow Director I know only that it is bad :)
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
