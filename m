Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 2792EA4FD64
	for <lists+intel-wired-lan@lfdr.de>; Wed,  5 Mar 2025 12:17:18 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 6719081A58;
	Wed,  5 Mar 2025 11:17:16 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id 9H6Gs2Xo81b8; Wed,  5 Mar 2025 11:17:15 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org BCD6981A6A
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1741173435;
	bh=LmK3do3USw8PPL1tJQOOfYEFqoAq8OIJOWsJK3voakQ=;
	h=Date:From:To:Cc:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=Nif5ZxqayJGk0Dqr/WUDb8us30i42jXrTWzgYe90XhaDZNxnvFp01utV6jkLknUuM
	 jd9sJnVsUW53mPNVFCYltbfBchpiLwp7zTNXeSCM/j9iWm1FF9Pbsf5EKyY02u7nXo
	 qcz+dNfSLYlK2BThnxpCA9+qIgSK65FGa5irH/V+qZHWGxkrOJm8dNabHluHKtLHfC
	 xzKhpqvpMJyUcJkoJn9f1qmwfchm77Hss+Yl5lvfiBN5EBAfNqBPvFda+4RXoHEV6P
	 12iY6yC0oIK6oBMIOwUvEw6ozZo723Qym/qI4HdtG1e36SfxizFFixL6q77Wbwtlj8
	 mg7McZl0ycJzw==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp1.osuosl.org (Postfix) with ESMTP id BCD6981A6A;
	Wed,  5 Mar 2025 11:17:15 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by lists1.osuosl.org (Postfix) with ESMTP id 94B42E2E
 for <intel-wired-lan@lists.osuosl.org>; Wed,  5 Mar 2025 11:17:13 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 77F6840BB8
 for <intel-wired-lan@lists.osuosl.org>; Wed,  5 Mar 2025 11:17:13 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id Xgcxix47iGJm for <intel-wired-lan@lists.osuosl.org>;
 Wed,  5 Mar 2025 11:17:12 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=147.75.193.91;
 helo=nyc.source.kernel.org; envelope-from=horms@kernel.org;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp4.osuosl.org A913B408E7
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org A913B408E7
Received: from nyc.source.kernel.org (nyc.source.kernel.org [147.75.193.91])
 by smtp4.osuosl.org (Postfix) with ESMTPS id A913B408E7
 for <intel-wired-lan@lists.osuosl.org>; Wed,  5 Mar 2025 11:17:12 +0000 (UTC)
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
 by nyc.source.kernel.org (Postfix) with ESMTP id E46B2A43AB5;
 Wed,  5 Mar 2025 11:11:40 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id BACECC4CEE8;
 Wed,  5 Mar 2025 11:17:09 +0000 (UTC)
Date: Wed, 5 Mar 2025 11:17:07 +0000
From: Simon Horman <horms@kernel.org>
To: Jedrzej Jagielski <jedrzej.jagielski@intel.com>
Cc: intel-wired-lan@lists.osuosl.org, anthony.l.nguyen@intel.com,
 netdev@vger.kernel.org, andrew@lunn.ch, pmenzel@molgen.mpg.de,
 Aleksandr Loktionov <aleksandr.loktionov@intel.com>,
 Michal Swiatkowski <michal.swiatkowski@linux.intel.com>
Message-ID: <20250305111707.GM3666230@kernel.org>
References: <20250303120630.226353-1-jedrzej.jagielski@intel.com>
 <20250303120630.226353-5-jedrzej.jagielski@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20250303120630.226353-5-jedrzej.jagielski@intel.com>
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=kernel.org; s=k20201202; t=1741173431;
 bh=5+kOicrbwcea7mesoaCgGQQgtJv+hnrlnQMqZcmtj2o=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=MayCLFOS1zzN0AcZb4EzzvHkM3WpUKM/XEFc/xez/p5GT5b+6DU0kMvjd9BrXswWr
 yD48z4nUTD4JHUIjP/lPRcCzJO/tT2v9KB84fa2hFrG5b6ZGCYl6F+wWaVktq4afqD
 7QKw3bdgMt7BtSO+N5+4mMaS0q0lEic7/v7Qo8RkPc/K/EwbWoejI0JptxZPC/Oo1W
 aYYyQT2a/adJzmxpoxAcnOSj8nloc/dFwT4u91OIbjWldXMA8YMgY1w1dZOgLj3/Wn
 c9c8VSvFMU0NUrrH6c3NWj12OyhLM036Vm8h4WYvKuiBjvZWL02pqi+9xykujKnX/5
 wDqBd40M98CvQ==
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dmarc=pass (p=quarantine dis=none)
 header.from=kernel.org
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org
 header.a=rsa-sha256 header.s=k20201202 header.b=MayCLFOS
Subject: Re: [Intel-wired-lan] [PATCH iwl-next v3 4/4] ixgbe: add E610
 .set_phys_id() callback implementation
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

On Mon, Mar 03, 2025 at 01:06:30PM +0100, Jedrzej Jagielski wrote:
> Legacy implementation of .set_phys_id() ethtool callback is not
> applicable for E610 device.
> 
> Add new implementation which uses 0x06E9 command by calling
> ixgbe_aci_set_port_id_led().
> 
> Reviewed-by: Aleksandr Loktionov <aleksandr.loktionov@intel.com>
> Reviewed-by: Michal Swiatkowski <michal.swiatkowski@linux.intel.com>
> Signed-off-by: Jedrzej Jagielski <jedrzej.jagielski@intel.com>
> ---
> v3: move the #defines related to ixgbe_aci_cmd_set_port_id_led out of the
> struct definition

Reviewed-by: Simon Horman <horms@kernel.org>

