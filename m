Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
	by mail.lfdr.de (Postfix) with ESMTPS id C0BF8B2AD60
	for <lists+intel-wired-lan@lfdr.de>; Mon, 18 Aug 2025 17:53:47 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 72EF6804F3;
	Mon, 18 Aug 2025 15:53:46 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id 7BAPs0gaUShw; Mon, 18 Aug 2025 15:53:45 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org CC1B5804EE
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1755532425;
	bh=a/+Azad9Y5n6Njb7uNvMrw3z2GZueYbIgJza0VTRPN8=;
	h=Date:From:To:Cc:In-Reply-To:References:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=ZKV3/HWfg2Q6ymM6uxtYFhGbAjrtGRfVCtxxuD2gbL23ry56xHIh3xWrFqrPyRay6
	 JNbZSdP0Jh4Lc3Rjxcoif/g0Qi3QoMWiMo1d5G3NKxGtb5g07WKkjTYWZFT3zK8c/k
	 U6/shXbXecPWkObGh72+sJDKtR1a8WX1dyVrjvsU3g17F0qxmOlT5Nly9iPUm2vO7U
	 aKhH8UCLqhywHU9QXsHimHb8JGTuKcejrR1ggtJpIhxSecllC96jdjUg0vePoSFhfR
	 DP7ZDdDUwLU1M3+mWTBWhVXjGAwsKPTfa+5I78u4WWfvKKWG2EX4c7if05lHrL5Pzt
	 Fx0ShpVU87Kew==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp1.osuosl.org (Postfix) with ESMTP id CC1B5804EE;
	Mon, 18 Aug 2025 15:53:45 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
 by lists1.osuosl.org (Postfix) with ESMTP id 9626675
 for <intel-wired-lan@lists.osuosl.org>; Mon, 18 Aug 2025 15:53:43 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 8813B804EB
 for <intel-wired-lan@lists.osuosl.org>; Mon, 18 Aug 2025 15:53:43 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id OwRvz02uGm9b for <intel-wired-lan@lists.osuosl.org>;
 Mon, 18 Aug 2025 15:53:43 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom;
 client-ip=2604:1380:4641:c500::1; helo=dfw.source.kernel.org;
 envelope-from=kuba@kernel.org; receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp1.osuosl.org EA980804E7
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org EA980804E7
Received: from dfw.source.kernel.org (dfw.source.kernel.org
 [IPv6:2604:1380:4641:c500::1])
 by smtp1.osuosl.org (Postfix) with ESMTPS id EA980804E7
 for <intel-wired-lan@lists.osuosl.org>; Mon, 18 Aug 2025 15:53:42 +0000 (UTC)
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
 by dfw.source.kernel.org (Postfix) with ESMTP id 0FC345C5C20;
 Mon, 18 Aug 2025 15:45:55 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 9FCEBC4CEEB;
 Mon, 18 Aug 2025 15:45:53 +0000 (UTC)
Date: Mon, 18 Aug 2025 08:45:52 -0700
From: Jakub Kicinski <kuba@kernel.org>
To: Shahar Shitrit <shshitrit@nvidia.com>
Cc: Tariq Toukan <tariqt@nvidia.com>, Jiri Pirko <jiri@nvidia.com>, Jiri
 Pirko <jiri@resnulli.us>, Eric Dumazet <edumazet@google.com>, Paolo Abeni
 <pabeni@redhat.com>, Andrew Lunn <andrew+netdev@lunn.ch>, "David S. Miller"
 <davem@davemloft.net>, Donald Hunter <donald.hunter@gmail.com>, Jonathan
 Corbet <corbet@lwn.net>, Brett Creeley <brett.creeley@amd.com>, Michael
 Chan <michael.chan@broadcom.com>, Pavan Chebbi <pavan.chebbi@broadcom.com>,
 Cai Huoqing <cai.huoqing@linux.dev>, Tony Nguyen
 <anthony.l.nguyen@intel.com>, Przemek Kitszel
 <przemyslaw.kitszel@intel.com>, Sunil Goutham <sgoutham@marvell.com>, Linu
 Cherian <lcherian@marvell.com>, Geetha sowjanya <gakula@marvell.com>, Jerin
 Jacob <jerinj@marvell.com>, hariprasad <hkelam@marvell.com>, Subbaraya
 Sundeep <sbhatta@marvell.com>, Saeed Mahameed <saeedm@nvidia.com>, Leon
 Romanovsky <leon@kernel.org>, Mark Bloch <mbloch@nvidia.com>, Ido Schimmel
 <idosch@nvidia.com>, Petr Machata <petrm@nvidia.com>, Manish Chopra
 <manishc@marvell.com>, netdev@vger.kernel.org,
 linux-kernel@vger.kernel.org, linux-doc@vger.kernel.org,
 intel-wired-lan@lists.osuosl.org, linux-rdma@vger.kernel.org, Gal Pressman
 <gal@nvidia.com>, Dragos Tatulea <dtatulea@nvidia.com>
Message-ID: <20250818084552.1d182f31@kernel.org>
In-Reply-To: <016a3fed-2f4b-4721-b92c-cf00cd5f3125@nvidia.com>
References: <1755111349-416632-1-git-send-email-tariqt@nvidia.com>
 <1755111349-416632-5-git-send-email-tariqt@nvidia.com>
 <20250815122627.77877d21@kernel.org>
 <016a3fed-2f4b-4721-b92c-cf00cd5f3125@nvidia.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=US-ASCII
Content-Transfer-Encoding: 7bit
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=kernel.org; s=k20201202; t=1755531954;
 bh=hnsi28Tz7v23mH68o8SpW2Z9qHvy5g1uLMZ8O8gitfs=;
 h=Date:From:To:Cc:Subject:In-Reply-To:References:From;
 b=PuE8IpLIWWrlrb6jSAu+ChECzZUvehsysHKUgVTeOmEySKpy9v51Vvyz8PyCPdpp2
 3SVgvtIfmh5UZckZ7ySMcg0pZ+IKQx+KMr+Ld00EhS2tEEs2dMT4ISyg3IqVFxCqRI
 9s6APYhjaxQiwDz0NbIpjt6L07CkuVPGiVfcqiZ/GHXKLIPI3faUKqdyrVnfpt2zVf
 C8XUD0G2XKH/0sSSeZzoknRojICeeGLafizkciiQ6wGSVZIg5vvVw+XAz+qLqmJCfh
 zcsDePU6e2R9Bd81AAFaeFfN3mKdqwd9jum/0mnfktZhOMO5lF37euZNGNVSD7lLm0
 Ari8ZvaAgjjww==
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dmarc=pass (p=quarantine dis=none)
 header.from=kernel.org
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=kernel.org header.i=@kernel.org header.a=rsa-sha256
 header.s=k20201202 header.b=PuE8IpLI
Subject: Re: [Intel-wired-lan] [PATCH net-next V3 4/5] devlink: Make health
 reporter error burst period configurable
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

On Sun, 17 Aug 2025 19:08:47 +0300 Shahar Shitrit wrote:
> On 15/08/2025 22:26, Jakub Kicinski wrote:
> > On Wed, 13 Aug 2025 21:55:48 +0300 Tariq Toukan wrote:  
> >> diff --git a/Documentation/netlink/specs/devlink.yaml b/Documentation/netlink/specs/devlink.yaml
> >> index bb87111d5e16..0e81640dd3b2 100644
> >> --- a/Documentation/netlink/specs/devlink.yaml
> >> +++ b/Documentation/netlink/specs/devlink.yaml
> >> @@ -853,6 +853,9 @@ attribute-sets:
> >>          type: nest
> >>          multi-attr: true
> >>          nested-attributes: dl-rate-tc-bws
> >> +      -
> >> +        name: health-reporter-error-burst-period  
> > 
> > the "graceful-period" does not have the word "error"
> > in it. Why is it necessary to include it in this parameter?
> > What else would be bursting in an error reporter if not errors?  
> 
> I see. Would you suggest renaming it to "burst period" through the
> entire series?
> for example in devlink.h:
> default_error_burst_period --> default_burst_period

Yes, AFAICT it won't result in any loss of clarity.
