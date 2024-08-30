Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
	by mail.lfdr.de (Postfix) with ESMTPS id 7219696551D
	for <lists+intel-wired-lan@lfdr.de>; Fri, 30 Aug 2024 04:09:20 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id C9B72419AB;
	Fri, 30 Aug 2024 02:09:18 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id i493Fc2eYWZW; Fri, 30 Aug 2024 02:09:18 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.34; helo=ash.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org BE5994238F
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1724983757;
	bh=S2z6MrZBFFgSMPNZBlvaynlX1UcpQHuhLVNcKaNsjlw=;
	h=Date:From:To:In-Reply-To:References:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=gc0vh2ttlFzeKUdhbw0EgUyglh5C4IBpW+0dl749Z9AQOubYqZRtGdTrs97YldFHW
	 dXNafCr52vRABON8M4LyJm5jZQ667lNmqa+4tiIuLZge0lE2xCp4qIH/mIlEE31YFF
	 ZL9RcsXwv33BpwufAhxnHsJLjcccvgrJc+3e5Ccxxe32qsmCONLAuFvuy2J/I/z+SQ
	 wt+5j2WaJpF4tQmWqOgoHF8C3H1mHh1goNov7OyuHWcgETN1gY1CSk1XDQGcroou7V
	 hNcvBskI5m99vp8TGYubGafgjUznAdHpgP8tgerKVo+Hy9ZnAGTMlKJF8USI3XmKh/
	 yPYU3Wa66ZDvQ==
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id BE5994238F;
	Fri, 30 Aug 2024 02:09:17 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 1BC4C1BF344
 for <intel-wired-lan@lists.osuosl.org>; Fri, 30 Aug 2024 02:09:16 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 08ACB81F0C
 for <intel-wired-lan@lists.osuosl.org>; Fri, 30 Aug 2024 02:09:16 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id vR4SWufmwlhr for <intel-wired-lan@lists.osuosl.org>;
 Fri, 30 Aug 2024 02:09:15 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom;
 client-ip=2604:1380:45d1:ec00::3; helo=nyc.source.kernel.org;
 envelope-from=kuba@kernel.org; receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp1.osuosl.org 3BC9181E6C
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 3BC9181E6C
Received: from nyc.source.kernel.org (nyc.source.kernel.org
 [IPv6:2604:1380:45d1:ec00::3])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 3BC9181E6C
 for <intel-wired-lan@lists.osuosl.org>; Fri, 30 Aug 2024 02:09:15 +0000 (UTC)
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
 by nyc.source.kernel.org (Postfix) with ESMTP id 37386A43569;
 Fri, 30 Aug 2024 02:09:07 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 45D31C4CEC1;
 Fri, 30 Aug 2024 02:09:13 +0000 (UTC)
Date: Thu, 29 Aug 2024 19:09:12 -0700
From: Jakub Kicinski <kuba@kernel.org>
To: Paolo Abeni <pabeni@redhat.com>
Message-ID: <20240829190912.6f9055d2@kernel.org>
In-Reply-To: <8b95089a48ebe8ae26a8904b62a39639688e3ce2.1724944117.git.pabeni@redhat.com>
References: <cover.1724944116.git.pabeni@redhat.com>
 <8b95089a48ebe8ae26a8904b62a39639688e3ce2.1724944117.git.pabeni@redhat.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=US-ASCII
Content-Transfer-Encoding: 7bit
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=kernel.org; s=k20201202; t=1724983753;
 bh=vMuoZjZX4HDxSuFFUFm/l7wtZeJQMXbYBRk31JMt+wQ=;
 h=Date:From:To:Cc:Subject:In-Reply-To:References:From;
 b=NkKKqUJw1jC08CDorDQxDShoOqOPLaVQoDdmXqIzlDkaxbkICDSBve6pyw31RcYJp
 gkM7o5aBbmk5xMGFT4YkIVTVoMdf9CCp381MQtx4w7bXGJvBxC3eWIVeXWY+G/x/SA
 cv2/f4hNXlhvJ3lK/LEw8B2lXO/m5/6O8SnM5ZhVN1CC04eaJt1nHg2DMFhqgMCmAb
 MNAglBHzIoW7Qa9NpoOwQadiUOShH94gEmU4SwVikYYXHY1fOnR+Qwdm5oitcR7GYn
 jAVDpINAN2tSOxK/atoDALJ3VYQ2gVpCNGWgEsJqfYbtzLk6PsxKLWllnV7n0YuFGx
 kMmf71zxUe6GA==
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dmarc=pass (p=quarantine dis=none)
 header.from=kernel.org
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org
 header.a=rsa-sha256 header.s=k20201202 header.b=NkKKqUJw
Subject: Re: [Intel-wired-lan] [PATCH v5 net-next 11/12] iavf: Add
 net_shaper_ops support
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
Cc: Jiri Pirko <jiri@resnulli.us>, netdev@vger.kernel.org,
 John Fastabend <john.fastabend@gmail.com>, Jamal Hadi Salim <jhs@mojatatu.com>,
 edumazet@google.com, Madhu Chittim <madhu.chittim@intel.com>,
 anthony.l.nguyen@intel.com, Simon Horman <horms@kernel.org>,
 Sridhar Samudrala <sridhar.samudrala@intel.com>,
 Donald Hunter <donald.hunter@gmail.com>, intel-wired-lan@lists.osuosl.org,
 przemyslaw.kitszel@intel.com, Sunil Kovvuri Goutham <sgoutham@marvell.com>
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

On Thu, 29 Aug 2024 17:17:04 +0200 Paolo Abeni wrote:
> +static int iavf_verify_handle(struct net_shaper_binding *binding,
> +			      const struct net_shaper_handle *handle,
> +			      struct netlink_ext_ack *extack)
> +{
> +	struct iavf_adapter *adapter = netdev_priv(binding->netdev);
> +	enum net_shaper_scope scope = handle->scope;
> +	int qid = handle->id;
> +
> +	if (scope != NET_SHAPER_SCOPE_QUEUE) {

should be checked by the core. add "mask of supported scopes" to caps

> +		NL_SET_ERR_MSG_FMT(extack, "Invalid shaper handle, unsupported scope %d",
> +				   scope);
> +		return -EOPNOTSUPP;
> +	}
> +
> +	if (qid >= adapter->num_active_queues) {

should be checked by the core..
we prolly want to trim the queue shapers on channel reconfig, 
then, too? :(

> +		NL_SET_ERR_MSG_FMT(extack, "Invalid shaper handle, queued id %d max %d",
> +				   qid, adapter->num_active_queues);
> +		return -EINVAL;
> +	}
> +	return 0;
> +}

> +static int iavf_shaper_group(struct net_shaper_binding *binding,
> +			     int leaves_count,
> +			     const struct net_shaper_handle *leaves_handles,
> +			     const struct net_shaper_info *leaves,
> +			     const struct net_shaper_handle *root_handle,
> +			     const struct net_shaper_info *root,
> +			     struct netlink_ext_ack *extack)
> +{
> +	return -EOPNOTSUPP;

Core should check if op is defined.
