Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 268467CE58B
	for <lists+intel-wired-lan@lfdr.de>; Wed, 18 Oct 2023 19:57:18 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id B2CFA41935;
	Wed, 18 Oct 2023 17:57:16 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org B2CFA41935
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1697651836;
	bh=+Z4LA1QevHu8kNLw3L24Sqw3ypRaRFwixTAP05NV+r0=;
	h=Date:From:To:In-Reply-To:References:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=k7bFYV0JdTBSrbgrk0mxUVSs7t7H0UAP7BVS3H5h67plb8Oq0wk2/81ITluPfRuWP
	 bX+TeGYmEM4+NNo8oXZO95aowbwpHixF+PyTH0KMhlO9aW7xY6ZWwqEqkWrxRbbtMW
	 K1/xUOve+F+NTREKmpSpXJS1YqoM4nw5N/PcljHFZpf+Z49PTxfiNcROEQdaWKXuVr
	 D9Sc5dMmSt45Zk6iWTGwS98Eh4GJ0KjUHHm7x82Jg4VzcxdpbuOC2e0lKTw2AKdCgl
	 49mm77A6hpdw0AC4JjIBXMQSZoz2TOshLtG6A2o4c5nbqvwAoTvnvKC54TO8TBjZZ+
	 fUCg+evfmVgJQ==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id H0rf0h9sMQAv; Wed, 18 Oct 2023 17:57:15 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id 387BD41923;
	Wed, 18 Oct 2023 17:57:15 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 387BD41923
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 22AC51BF5D7
 for <intel-wired-lan@lists.osuosl.org>; Wed, 18 Oct 2023 17:57:10 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 0431582FE7
 for <intel-wired-lan@lists.osuosl.org>; Wed, 18 Oct 2023 17:57:10 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 0431582FE7
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id R0dVDAdctd_3 for <intel-wired-lan@lists.osuosl.org>;
 Wed, 18 Oct 2023 17:57:09 +0000 (UTC)
Received: from ams.source.kernel.org (ams.source.kernel.org
 [IPv6:2604:1380:4601:e00::1])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 5695482FE4
 for <intel-wired-lan@lists.osuosl.org>; Wed, 18 Oct 2023 17:57:09 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 5695482FE4
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
 by ams.source.kernel.org (Postfix) with ESMTP id 64D28B82445;
 Wed, 18 Oct 2023 17:57:07 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 2FC27C433C7;
 Wed, 18 Oct 2023 17:57:06 +0000 (UTC)
Date: Wed, 18 Oct 2023 10:57:05 -0700
From: Jakub Kicinski <kuba@kernel.org>
To: Ahmed Zaki <ahmed.zaki@intel.com>
Message-ID: <20231018105705.556a6cc9@kernel.org>
In-Reply-To: <20231018170635.65409-1-ahmed.zaki@intel.com>
References: <20231018170635.65409-1-ahmed.zaki@intel.com>
MIME-Version: 1.0
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=kernel.org; s=k20201202; t=1697651826;
 bh=JofSflLWtggV8URpWNuqKetCfBtt9egjfPL+AtxClcY=;
 h=Date:From:To:Cc:Subject:In-Reply-To:References:From;
 b=H0cSHS/2ehHG2JNjTx2sCWDMBQGHbTRUdGfIJPR32ZYkHmaKW3xB5IJNUQshZ+LIN
 g+NlnxCGi0wM6yll3Jfh3iE3Yk6GF8jcJ3ZNSaxzjYIRUtFEaVxPgUr5Gvn+RDSOXm
 BHwX4oRLnpqmdsb+BLwpfW3QtvFohCNu5ET8xEb3c156uzxXIP/Wm4piE00x7k1Qjq
 4MlWCEL64X9Bn6IwIObodMvUyiqoadwwSBgT8WY8zls6QaaBrsVLWK34B1wi0QPdx6
 isL8Z5xcB1iaGAN8elbocYzDsjWPzLkSXPBJf0/b/3fMQfHxeOxs9vYdtleqgIUovK
 sp+PbinN1obLQ==
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org
 header.a=rsa-sha256 header.s=k20201202 header.b=H0cSHS/2
Subject: Re: [Intel-wired-lan] [PATCH net-next v5 0/6] Support symmetric RSS
 (Toeplitz) hash
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
 corbet@lwn.net, netdev@vger.kernel.org, linux-doc@vger.kernel.org,
 jesse.brandeburg@intel.com, edumazet@google.com, anthony.l.nguyen@intel.com,
 horms@kernel.org, vladimir.oltean@nxp.com, intel-wired-lan@lists.osuosl.org,
 pabeni@redhat.com, davem@davemloft.net
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

On Wed, 18 Oct 2023 11:06:29 -0600 Ahmed Zaki wrote:
> v5: move sanity checks from ethtool/ioctl.c to ice's and iavf's rxfnc
>     drivers entries (patches 5 and 6).

What about the discussion with Alex?
I thought you'd move the flag out of RXH_ into a separate field,
key-preproc, sub-algo, whatever..
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
