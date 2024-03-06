Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [IPv6:2605:bc80:3010::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 427E3873A03
	for <lists+intel-wired-lan@lfdr.de>; Wed,  6 Mar 2024 16:01:03 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id DE5C241852;
	Wed,  6 Mar 2024 15:01:01 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 9wobE1gCGT6J; Wed,  6 Mar 2024 15:01:01 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.34; helo=ash.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 32017408E8
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1709737261;
	bh=0uxcpL9/Ih5AlKbImrbgJBl35W+AB4hAgbyXtEnOhTs=;
	h=Date:From:To:In-Reply-To:References:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=tJv6Ccp6uapVpmI5Rq0o40A7v7WnAOZE5cHbVhJ7KEgcL/o+FRKRKtG+mxS3lmCkX
	 BE9PKY917WYg5wweGsI6ozLNgYs/BiMC1OMbYAKogpmwqtJZ8uMvb7SjVN31hv3PbU
	 2WRVcHxn5l5LM6uuo3w0j/B1b62iWuT/ZlYBO9JCCXgqqGLggmn3gSq7vFXkUC4cca
	 ioIUubJx8iz8KZQ2gX/LnwWbxSAaU+sOcFrWQ1gxBWEjg6tAUoHRw1HfW7T0Gwa3FE
	 kmFJxSVOQYOud2Rp5a0NlDveMJ1RnKBHq2r7GfR8+gc9/2FYGnbGTqj2tfZ20LYiu6
	 DNZzeCbfgYnow==
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id 32017408E8;
	Wed,  6 Mar 2024 15:01:01 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 7C6CA1BF3DA
 for <intel-wired-lan@lists.osuosl.org>; Wed,  6 Mar 2024 15:00:59 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 67D566077A
 for <intel-wired-lan@lists.osuosl.org>; Wed,  6 Mar 2024 15:00:59 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id hOyhWR2zN7iI for <intel-wired-lan@lists.osuosl.org>;
 Wed,  6 Mar 2024 15:00:58 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom;
 client-ip=2604:1380:4641:c500::1; helo=dfw.source.kernel.org;
 envelope-from=kuba@kernel.org; receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp3.osuosl.org BFA6D60642
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org BFA6D60642
Received: from dfw.source.kernel.org (dfw.source.kernel.org
 [IPv6:2604:1380:4641:c500::1])
 by smtp3.osuosl.org (Postfix) with ESMTPS id BFA6D60642
 for <intel-wired-lan@lists.osuosl.org>; Wed,  6 Mar 2024 15:00:58 +0000 (UTC)
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
 by dfw.source.kernel.org (Postfix) with ESMTP id 823A861975;
 Wed,  6 Mar 2024 15:00:57 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id C5763C433C7;
 Wed,  6 Mar 2024 15:00:56 +0000 (UTC)
Date: Wed, 6 Mar 2024 07:00:54 -0800
From: Jakub Kicinski <kuba@kernel.org>
To: "Zou, Steven" <steven.zou@intel.com>
Message-ID: <20240306070054.094fe4a6@kernel.org>
In-Reply-To: <0056a010-4fd6-4300-9790-649d820a5a01@intel.com>
References: <20240208031837.11919-1-steven.zou@intel.com>
 <PH0PR11MB5013D1C2AD784512CA70173396212@PH0PR11MB5013.namprd11.prod.outlook.com>
 <IA1PR11MB79422EFDCA5CDD7EC60125C0F4212@IA1PR11MB7942.namprd11.prod.outlook.com>
 <0056a010-4fd6-4300-9790-649d820a5a01@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=US-ASCII
Content-Transfer-Encoding: 7bit
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=kernel.org; s=k20201202; t=1709737257;
 bh=LfwQBbFcVFMQi9c2js7MIDHI5ddZcQW5s/fdcnnbuVE=;
 h=Date:From:To:Cc:Subject:In-Reply-To:References:From;
 b=Sy5jJJiDao1wPzr8weSsNDm2A4fk5vorjgsz7VmYgP7e8quoQbNRT6F5vljJIf8+O
 dfkcaBj78XTT1HyE8tDAvoNuiy1rWKtUksHZh++MpLlzzu2aBYoxvIVAGj97f4LIIl
 9Vduvqxq0rr0k6uKda2TJOvMecxMbxoBjC8ddEm/3Wct5UMsXet9d0eoPqK7q0qdbp
 sejR/Yv5LGGk/uq5XmkFqeDHZw34x4rUjWJdXVjS+Hw3Pi+ggXW+PhTKkbPc+R7kHv
 vY32U8381Wh6Bty1gUAENdWx++3+Lq4kFdYSxcpJRt4E0LjK/hv9/ld9CrRhDhnZvz
 Vp113RaK8nseg==
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=kernel.org
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org
 header.a=rsa-sha256 header.s=k20201202 header.b=Sy5jJJiD
Subject: Re: [Intel-wired-lan] [PATCH iwl-next] ice: Add switch recipe
 reusing feature
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
Cc: "netdev@vger.kernel.org" <netdev@vger.kernel.org>, "Sharma,
 Mayank" <mayank.sharma@intel.com>, "Staikov,
 Andrii" <andrii.staikov@intel.com>, "Lobakin,
 Aleksander" <aleksander.lobakin@intel.com>, "Nguyen,
 Anthony L" <anthony.l.nguyen@intel.com>, "horms@kernel.org" <horms@kernel.org>,
 "Kitszel, Przemyslaw" <przemyslaw.kitszel@intel.com>,
 "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

On Wed, 6 Mar 2024 22:55:48 +0800 Zou, Steven wrote:
> > We are seeing following kernel compilation error while compiling next kernel:
> >
> > "error: dereferencing pointer to incomplete type 'struct dpll_pin'"  
> 
> Thanks Mayank!
> The patch does not touch 'stuct dpll_pin', I do not think this is caused 
> by the patch changes.
> And the patch is based on the base-commit: 
> ce1833c065c8c9aec8b147dd682b0ddca8c30071 that I built and loaded the 
> ice.ko successfully before I submitted the patch.
> 
> Hi Tony,
> Do you have any suggestion about this compilation issue?

net-next tree currently has this problem. You can try merging in net
which has the fix (it will propagate to net-next on Thursday). 
Or try changing the compiler, newer Clang and GCC do not generate this
error.
