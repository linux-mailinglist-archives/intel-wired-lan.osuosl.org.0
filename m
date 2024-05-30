Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
	by mail.lfdr.de (Postfix) with ESMTPS id D4C538D42F9
	for <lists+intel-wired-lan@lfdr.de>; Thu, 30 May 2024 03:34:17 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 195CD8119F;
	Thu, 30 May 2024 01:34:16 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id bwC-t8xG3bq6; Thu, 30 May 2024 01:34:15 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.34; helo=ash.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 491C681194
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1717032855;
	bh=RaSh+5Qr1Ehe9VBmBTLYUh3T4jmAwQF+YldRp59gM6I=;
	h=Date:From:To:In-Reply-To:References:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=8aezYaiwBVswMeDtWyvC87DKDSkrxk8zUx9PTf3jpvTiCVacSI6egX+YJjrpAG48G
	 ouvttGAPmYppJ1y2wezEC9/NYeWoUHWYm99SpFT4qIANzRRe7h5vFMCI4WzbWeT7WN
	 V31+E3IrPEvbY3bElHsOLYF6VZH/vGRYUxD2ANLDiC3uq6cyM432zEvvYQPBaxOoCV
	 UsdJeXcbkRuB+QQIJ84Xu9dKPTlCTQbbwHFYR35gnW1gQV0lgGWhH+YupfXliZR8YT
	 3mVi/huDRePCS/I2FHDvBmmI4ir6k5NZ0JlwJAvnZkdmiu9jg2oMK7W5imAYEedxpV
	 mZMKLayNwPSKw==
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id 491C681194;
	Thu, 30 May 2024 01:34:15 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 3B9BB1D402E
 for <intel-wired-lan@lists.osuosl.org>; Thu, 30 May 2024 01:34:13 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 33B7841380
 for <intel-wired-lan@lists.osuosl.org>; Thu, 30 May 2024 01:34:13 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id gfR98bvBDQfQ for <intel-wired-lan@lists.osuosl.org>;
 Thu, 30 May 2024 01:34:12 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=139.178.84.217;
 helo=dfw.source.kernel.org; envelope-from=kuba@kernel.org; receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp2.osuosl.org 82AA84137C
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 82AA84137C
Received: from dfw.source.kernel.org (dfw.source.kernel.org [139.178.84.217])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 82AA84137C
 for <intel-wired-lan@lists.osuosl.org>; Thu, 30 May 2024 01:34:12 +0000 (UTC)
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
 by dfw.source.kernel.org (Postfix) with ESMTP id 0BC4662013;
 Thu, 30 May 2024 01:34:11 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 3FAB7C113CC;
 Thu, 30 May 2024 01:34:10 +0000 (UTC)
Date: Wed, 29 May 2024 18:34:09 -0700
From: Jakub Kicinski <kuba@kernel.org>
To: Alexander Lobakin <aleksander.lobakin@intel.com>
Message-ID: <20240529183409.29a914c2@kernel.org>
In-Reply-To: <20240528134846.148890-2-aleksander.lobakin@intel.com>
References: <20240528134846.148890-1-aleksander.lobakin@intel.com>
 <20240528134846.148890-2-aleksander.lobakin@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=US-ASCII
Content-Transfer-Encoding: 7bit
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=kernel.org; s=k20201202; t=1717032850;
 bh=KyrREIinnHGspd2GO6w7tcxvikzFHN7sskNsxhF0axQ=;
 h=Date:From:To:Cc:Subject:In-Reply-To:References:From;
 b=X4Y9AxLytN8XEXvwFHoPdyYKFMJsQmhT7n9yvOt0VPfv54o+52u5v+dlViEl5jgkc
 69eVnHAIj/0G0eJHDStXhNrRcfpDVqQ9UJCRARg/IPxwl4sPtYnYBg9U/ou/cYQml/
 bS7YOX5X8rXOpwMuquxOzrEm2JY2kvlOkxGUrdQsfPQA5Fi50Q0yLqtEUoHf5entl3
 m8JL6gX0Z8IV4zOGAboXj1mwVwhQZsz0tlZxu2bQPcrX7AM/9qwAUV6sjH/MjMag3c
 oCZYaAwndTMgFx18KcwvRaFcZ65kI7IeWJfRpe5zYZ1dZ4CFmYzeUv8Qr0enk9/GzP
 l/rkRhSikAYOg==
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=kernel.org
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=kernel.org header.i=@kernel.org header.a=rsa-sha256
 header.s=k20201202 header.b=X4Y9AxLy
Subject: Re: [Intel-wired-lan] [PATCH iwl-next 01/12] libeth: add cacheline
 / struct alignment helpers
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
Cc: Mina Almasry <almasrymina@google.com>, netdev@vger.kernel.org,
 linux-kernel@vger.kernel.org, Eric Dumazet <edumazet@google.com>,
 Tony Nguyen <anthony.l.nguyen@intel.com>,
 nex.sw.ncis.osdt.itp.upstreaming@intel.com, intel-wired-lan@lists.osuosl.org,
 Paolo Abeni <pabeni@redhat.com>, "David S. Miller" <davem@davemloft.net>
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

On Tue, 28 May 2024 15:48:35 +0200 Alexander Lobakin wrote:
> diff --git a/scripts/kernel-doc b/scripts/kernel-doc
> index 95a59ac78f82..d0cf9a2d82de 100755
> --- a/scripts/kernel-doc
> +++ b/scripts/kernel-doc
> @@ -1155,6 +1155,7 @@ sub dump_struct($$) {
>          $members =~ s/\bstruct_group_attr\s*\(([^,]*,){2}/STRUCT_GROUP(/gos;
>          $members =~ s/\bstruct_group_tagged\s*\(([^,]*),([^,]*),/struct $1 $2; STRUCT_GROUP(/gos;
>          $members =~ s/\b__struct_group\s*\(([^,]*,){3}/STRUCT_GROUP(/gos;
> +        $members =~ s/\blibeth_cacheline_group\s*\(([^,]*,)/struct { } $1; STRUCT_GROUP(/gos;
>          $members =~ s/\bSTRUCT_GROUP(\(((?:(?>[^)(]+)|(?1))*)\))[^;]*;/$2/gos;
>  
>          my $args = qr{([^,)]+)};

Having per-driver grouping defines is a no-go.
Do you need the defines in the first place?
Are you sure the assert you're adding are not going to explode
on some weird arch? Honestly, patch 5 feels like a little too
much for a driver..
