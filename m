Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
	by mail.lfdr.de (Postfix) with ESMTPS id 115EF7CB703
	for <lists+intel-wired-lan@lfdr.de>; Tue, 17 Oct 2023 01:31:15 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 3CF6581F7D;
	Mon, 16 Oct 2023 23:31:13 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 3CF6581F7D
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1697499073;
	bh=rQxidznPR7nHB8sL/MB4v1f/VXDSA29LMv1/MhUTEGY=;
	h=Date:From:To:In-Reply-To:References:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=ZAmaltqo/pYSgaAEWcSXcdGA/zGRHBOcx9i78WfasN55taq+9w78M+IWs8oLHd3Nu
	 ixduDCeU5k6UkwtU0pD9Y+9cSnPKBJKZrbf1RELClUQjxscDe44Qlf1RARoYAlA3v8
	 TGy59mmyjKks1d0FR8yBKiBeOJy6PCA75kkIZs6iw+COw6oKwlbjXUbEDvtHJ9X0jH
	 lwFpD+ShwnTJwwJyrYtTIme3RJzdFnBV4cw2G/KbBsNE2CKx/yfpc21IOHtuwW+y/Q
	 1s9IsCV4Dd+ONoRBOTkmO6lRr9go20oyJ4OUFzLPnWo+wI/BliE5NVkw39PX6d1ur+
	 uOuknS6F3jp7w==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
	by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id zcJSlGoJvFei; Mon, 16 Oct 2023 23:31:12 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id 1FFA7818C0;
	Mon, 16 Oct 2023 23:31:12 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 1FFA7818C0
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id D9EA81BF3BE
 for <intel-wired-lan@lists.osuosl.org>; Mon, 16 Oct 2023 23:31:06 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id B17DE417AE
 for <intel-wired-lan@lists.osuosl.org>; Mon, 16 Oct 2023 23:31:06 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org B17DE417AE
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id rR9N49j9ZGb7 for <intel-wired-lan@lists.osuosl.org>;
 Mon, 16 Oct 2023 23:31:06 +0000 (UTC)
Received: from sin.source.kernel.org (sin.source.kernel.org [145.40.73.55])
 by smtp4.osuosl.org (Postfix) with ESMTPS id F3C904179A
 for <intel-wired-lan@lists.osuosl.org>; Mon, 16 Oct 2023 23:31:05 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org F3C904179A
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
 by sin.source.kernel.org (Postfix) with ESMTP id D4E1FCE1B7A;
 Mon, 16 Oct 2023 23:31:01 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 4DF2FC433C7;
 Mon, 16 Oct 2023 23:31:00 +0000 (UTC)
Date: Mon, 16 Oct 2023 16:30:59 -0700
From: Jakub Kicinski <kuba@kernel.org>
To: Alexander Duyck <alexander.duyck@gmail.com>
Message-ID: <20231016163059.23799429@kernel.org>
In-Reply-To: <CAKgT0UfcT5cEDRBzCxU9UrQzbBEgFt89vJZjz8Tow=yAfEYERw@mail.gmail.com>
References: <20231016154937.41224-1-ahmed.zaki@intel.com>
 <20231016154937.41224-2-ahmed.zaki@intel.com>
 <8d1b1494cfd733530be887806385cde70e077ed1.camel@gmail.com>
 <26812a57-bdd8-4a39-8dd2-b0ebcfd1073e@intel.com>
 <CAKgT0Ud7JjUiE32jJbMbBGVexrndSCepG54PcGYWHJ+OC9pOtQ@mail.gmail.com>
 <14feb89d-7b4a-40c5-8983-5ef331953224@intel.com>
 <CAKgT0UfcT5cEDRBzCxU9UrQzbBEgFt89vJZjz8Tow=yAfEYERw@mail.gmail.com>
MIME-Version: 1.0
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=kernel.org; s=k20201202; t=1697499061;
 bh=nwdQBoh44SzFZ2rYCp83ea7TerdiBs+GYGKIDM09S/Q=;
 h=Date:From:To:Cc:Subject:In-Reply-To:References:From;
 b=sR/3zAHs90iIH3UGAt+nf8mUNK0JcfcAd6Appi9qlpPZrtS8fuGRSOmrY+oEHir6g
 5HN+LIFvW/X4MS1PyLdykc9TmMUnJ3TFpU/j53mjExdqeBocAh42VPMeECx6p3QESQ
 vaExacPpd0zMgg3zQ8uqdJ9wjOsuIZG5C2+AwNIgQw6i0dxevP7EJLj5sxUewVymi6
 ecJ5nGj1DCx4WFdoOVEHokIPD/aOVbqOJx4/z/mFB83gsnQp1srFho/Mm0G1k0vuo9
 ZCk+AKToCpvMWmsH4eQXXFzBLQ9bfSS0v/9hjpVM9JfA0WbQJ3ABnX9L8t26oy+0Hg
 DbweH3VCR7ODg==
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org
 header.a=rsa-sha256 header.s=k20201202 header.b=sR/3zAHs
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

On Mon, 16 Oct 2023 15:55:21 -0700 Alexander Duyck wrote:
> It would make more sense to just add it as a variant hash function of
> toeplitz. If you did it right you could probably make the formatting
> pretty, something like:
> RSS hash function:
>     toeplitz: on
>         symmetric xor: on
>     xor: off
>     crc32: off
> 
> It doesn't make sense to place it in the input flags and will just
> cause quick congestion as things get added there. This is an algorithm
> change so it makes more sense to place it there.

Algo is also a bit confusing, it's more like key pre-processing?
There's nothing toeplitz about xoring input fields. Works as well
for CRC32.. or XOR.

We can use one of the reserved fields of struct ethtool_rxfh to carry
this extension. I think I asked for this at some point, but there's
only so much repeated feedback one can send in a day :(
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
