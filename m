Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
	by mail.lfdr.de (Postfix) with ESMTPS id 341CA8AA21F
	for <lists+intel-wired-lan@lfdr.de>; Thu, 18 Apr 2024 20:38:34 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 67EE9820CF;
	Thu, 18 Apr 2024 18:38:32 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id KFLZrP2qkGBd; Thu, 18 Apr 2024 18:38:31 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.34; helo=ash.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org B73F780C05
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1713465511;
	bh=1EISmQzD22XF4RrVVhOdkH1rtYY5+PPECUT45O5OXhs=;
	h=Date:From:To:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=punmHFCVXCy2mI2VzZjeyK8B+pICWxq5oigP429h0oP6/rm0QG5v1EFQckk2X1RBz
	 cjfi9Wp00Y+8qLy6m35sHb/iS+lJ0PTVIpOh0wfTZzlHdmZYSk3PEDRWhgpVCLUIT+
	 irtusYOZA1dEYBa4ptxBx9Wz7vlU7Rme7OZ45vvnaYgIVipgoNNdef8MSHWAmU1rvD
	 W5JTD0Sft1beJi9IVp3Lei9psptlLPE/oREYSd7E8b/VPnCTZ9ZbVneAFUzz/Oecn4
	 +pcuX+AESZ3K7Kj+h9ijUuNL/srxnn4d6LbcikG/o+8wwHE3W4Xt3p8S1lSa+wszTJ
	 clWBew6YeLvmw==
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id B73F780C05;
	Thu, 18 Apr 2024 18:38:31 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 9A8F21BF8A8
 for <intel-wired-lan@lists.osuosl.org>; Thu, 18 Apr 2024 18:38:29 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 84E44820CB
 for <intel-wired-lan@lists.osuosl.org>; Thu, 18 Apr 2024 18:38:29 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id Yk1dPslXqRvO for <intel-wired-lan@lists.osuosl.org>;
 Thu, 18 Apr 2024 18:38:29 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom;
 client-ip=2604:1380:40e1:4800::1; helo=sin.source.kernel.org;
 envelope-from=horms@kernel.org; receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp1.osuosl.org C3D9980C05
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org C3D9980C05
Received: from sin.source.kernel.org (sin.source.kernel.org
 [IPv6:2604:1380:40e1:4800::1])
 by smtp1.osuosl.org (Postfix) with ESMTPS id C3D9980C05
 for <intel-wired-lan@lists.osuosl.org>; Thu, 18 Apr 2024 18:38:28 +0000 (UTC)
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
 by sin.source.kernel.org (Postfix) with ESMTP id 85F8CCE18AE;
 Thu, 18 Apr 2024 18:38:26 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id B9172C113CC;
 Thu, 18 Apr 2024 18:38:23 +0000 (UTC)
Date: Thu, 18 Apr 2024 19:38:21 +0100
From: Simon Horman <horms@kernel.org>
To: =?utf-8?Q?Asbj=C3=B8rn_Sloth_T=C3=B8nnesen?= <ast@fiberby.net>
Message-ID: <20240418183821.GO3975545@kernel.org>
References: <20240416144335.15353-1-ast@fiberby.net>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <20240416144335.15353-1-ast@fiberby.net>
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=kernel.org; s=k20201202; t=1713465505;
 bh=/2OgoxKDBN2MBqE0ejk+VYzE32r/z0A9/r00iV40u6Y=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=DY50xFiEN1LZrv32izTmTxre69moJG1xz2gJyKl5XZlU6bS6GLyp7mKbtYqVpKzXD
 V+/hUUFQ1UgQx5kjZZg7L7wGBm8kVVL2OYPl+DpWOlKr6FQiKslX23aFFQgDLUf+H/
 Nc8PBofvbJoH7SLWyaKOc9ztpFGBYoHZ5x7t6ji3GXSuieSScSZ24vKJF40s321UO7
 Q+qjB3qNZQVCU8I8HxKLk81/JDTIGsHh52YaFkgHQfSaH3IbVvWRwqJPcV8Wy3QPDg
 MicUAWf1dGGZ38hbz7/sbajyezfMfUxYNklgvcURlWMlk12SPawnnuJ8Bd8kNdTYjz
 wV0RAYLvVCF0w==
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=kernel.org
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org
 header.a=rsa-sha256 header.s=k20201202 header.b=DY50xFiE
Subject: Re: [Intel-wired-lan] [PATCH iwl-next] igb: flower: validate
 control flags
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
Cc: Tony Nguyen <anthony.l.nguyen@intel.com>, netdev@vger.kernel.org,
 linux-kernel@vger.kernel.org, Eric Dumazet <edumazet@google.com>,
 intel-wired-lan@lists.osuosl.org, Jakub Kicinski <kuba@kernel.org>,
 Paolo Abeni <pabeni@redhat.com>, "David S. Miller" <davem@davemloft.net>
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

On Tue, Apr 16, 2024 at 02:43:35PM +0000, Asbjørn Sloth Tønnesen wrote:
> This driver currently doesn't support any control flags.
> 
> Use flow_rule_match_has_control_flags() to check for control flags,
> such as can be set through `tc flower ... ip_flags frag`.
> 
> In case any control flags are masked, flow_rule_match_has_control_flags()
> sets a NL extended error message, and we return -EOPNOTSUPP.
> 
> Only compile-tested.
> 
> Signed-off-by: Asbjørn Sloth Tønnesen <ast@fiberby.net>

Reviewed-by: Simon Horman <horms@kernel.org>

