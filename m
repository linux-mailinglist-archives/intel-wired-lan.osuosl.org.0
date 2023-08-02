Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
	by mail.lfdr.de (Postfix) with ESMTPS id 7E50476D414
	for <lists+intel-wired-lan@lfdr.de>; Wed,  2 Aug 2023 18:49:54 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 196CA6128E;
	Wed,  2 Aug 2023 16:49:53 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 196CA6128E
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1690994993;
	bh=jI3LQ+/obenfE7rrAaGa/+IGDuwGoV9PcjNmdpGAcsw=;
	h=Date:From:To:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=jCCQJ14wfFKVcPbezQt1NX4ZxHAInzikos1ksbtIqxQ/FBWzp0pZsvlZTH8B2vanT
	 FbNd3NBKWQ/PPXYIEBCIFYMRpo6gFJYeauC/SBC0A1tVvqZOKzQWZL/NIYM9O/vqkj
	 xeEpdaE+8w1vNWsIaADvyJtynB+rATqT45+ntk+5wgKmfC4oFHt4asWLrWg1Iiy5WO
	 YDJdefnkMUggfLwfLiQrBU9lGa612xXew0+dG1PMvhx0XavQstP9zDl/ZdJRueACyn
	 jcZjtdxLRVmAnyzYrg4kfOZU0co2iQjQhvOVyyAKN3Bkd0YbqHx91mSZWepmQOVBHP
	 UA/TvIP7GfIcg==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 4zAM3N7CcyTH; Wed,  2 Aug 2023 16:49:52 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id 1AD666124D;
	Wed,  2 Aug 2023 16:49:52 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 1AD666124D
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 091FF1BF3A0
 for <intel-wired-lan@lists.osuosl.org>; Wed,  2 Aug 2023 16:49:47 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 32B8980D74
 for <intel-wired-lan@lists.osuosl.org>; Wed,  2 Aug 2023 16:49:20 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 32B8980D74
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 3upxZiCP4t1l for <intel-wired-lan@lists.osuosl.org>;
 Wed,  2 Aug 2023 16:49:19 +0000 (UTC)
Received: from dfw.source.kernel.org (dfw.source.kernel.org [139.178.84.217])
 by smtp1.osuosl.org (Postfix) with ESMTPS id A56D48141D
 for <intel-wired-lan@lists.osuosl.org>; Wed,  2 Aug 2023 16:49:19 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org A56D48141D
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
 (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
 key-exchange X25519 server-signature RSA-PSS (2048 bits))
 (No client certificate requested)
 by dfw.source.kernel.org (Postfix) with ESMTPS id E646C61A0D;
 Wed,  2 Aug 2023 16:49:18 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 82EBAC433C9;
 Wed,  2 Aug 2023 16:49:16 +0000 (UTC)
Date: Wed, 2 Aug 2023 18:49:13 +0200
From: Simon Horman <horms@kernel.org>
To: Yang Yingliang <yangyingliang@huawei.com>
Message-ID: <ZMqJCQC+8vL+HA5a@kernel.org>
References: <20230802090739.3266122-1-yangyingliang@huawei.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20230802090739.3266122-1-yangyingliang@huawei.com>
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=kernel.org; s=k20201202; t=1690994958;
 bh=i3NjhRfDljUbrvQ9Gjo9ttGLESER8Q16GU4ZplSPidI=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=HDDBlMlJS/8uZokFwLDzwv3dXlf1kvMtWo9a/Oe1kkicO17efe68mOhCqyAIrOEdr
 Qzkea7OTSBb1B9CxbM/PeUnVy4Jkq2FE+kNuOv+wjBytV4+CwjMc4qvzY80WqHgk+W
 Vhvb6ANO1W2q13QgD4+Cjy8zJqrBPDu69sTDOH7zkyh1dW/KrwC6H1jYWJQU5fpl64
 OAB4HdisYQKjsP+7CS4E+gY8vzl5Mc80yBYxnej5gg6b84ofwq8i78x9LaR+QLJQIB
 jab4U+833gPTABK3Sn9PoNk4x/VhtUt6fIVE7hUiQo/FU+V5aPvySxDm5b90cokAK1
 i1km7K/eip/DQ==
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org
 header.a=rsa-sha256 header.s=k20201202 header.b=HDDBlMlJ
Subject: Re: [Intel-wired-lan] [PATCH net-next] ice: use
 list_for_each_entry() helper
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
Cc: netdev@vger.kernel.org, jesse.brandeburg@intel.com, edumazet@google.com,
 anthony.l.nguyen@intel.com, kuba@kernel.org, intel-wired-lan@lists.osuosl.org,
 pabeni@redhat.com, davem@davemloft.net
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

On Wed, Aug 02, 2023 at 05:07:39PM +0800, Yang Yingliang wrote:
> Convert list_for_each() to list_for_each_entry() where applicable.
> No functional changed.
> 
> Signed-off-by: Yang Yingliang <yangyingliang@huawei.com>

Reviewed-by: Simon Horman <horms@kernel.org>

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
