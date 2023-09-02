Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id D1471790663
	for <lists+intel-wired-lan@lfdr.de>; Sat,  2 Sep 2023 10:45:33 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 5DC1E60E7C;
	Sat,  2 Sep 2023 08:45:32 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 5DC1E60E7C
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1693644332;
	bh=3xIncnb9RcwKKkDF3ZY529LaOuoQNkZN2IBBTIzAOhM=;
	h=Date:From:To:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=cTKHgBLGKXO1+rN1uvXgetwV525S6PwfWL2cimT7j061D1Go0lXBy1cjcHluOsrSh
	 lRzwpZy7lJwpfzW3WHF+rbbI2Bm3AajIW4wpvNumuspjXZ7EDMgmnpseGAHEsbr6Nv
	 jbc0EstZ2OR9ZmPDtJoqy4cV/d+kMt6Antiabsxyx9ahrt6g7BjgSnsa96XQc4JpLu
	 cIPv++YlWBu8ZOaDixQroBLA+n0PBYJh0blpdeMeEFSRr/IT06D/6aKiZ5g8h267Fn
	 rBOqC7+uu+eruZZb63Ec5afBfjgt0EFawP5rimNQMN9l7PCPNVRlV4fsnLMn8xHEDb
	 vj8w2iLzfgMmw==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id QN0qExs4Ry4Z; Sat,  2 Sep 2023 08:45:31 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id 5F26160BC4;
	Sat,  2 Sep 2023 08:45:31 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 5F26160BC4
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id CB3FB1BF41B
 for <intel-wired-lan@lists.osuosl.org>; Sat,  2 Sep 2023 08:45:25 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id A3D6283B3A
 for <intel-wired-lan@lists.osuosl.org>; Sat,  2 Sep 2023 08:45:25 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org A3D6283B3A
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id R86moAtLO3Bx for <intel-wired-lan@lists.osuosl.org>;
 Sat,  2 Sep 2023 08:45:25 +0000 (UTC)
X-Greylist: delayed 68511 seconds by postgrey-1.37 at util1.osuosl.org;
 Sat, 02 Sep 2023 08:45:24 UTC
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org A79E183B2F
Received: from sin.source.kernel.org (sin.source.kernel.org
 [IPv6:2604:1380:40e1:4800::1])
 by smtp1.osuosl.org (Postfix) with ESMTPS id A79E183B2F
 for <intel-wired-lan@lists.osuosl.org>; Sat,  2 Sep 2023 08:45:24 +0000 (UTC)
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
 (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
 key-exchange X25519 server-signature RSA-PSS (2048 bits))
 (No client certificate requested)
 by sin.source.kernel.org (Postfix) with ESMTPS id 5F58ACE23EE;
 Sat,  2 Sep 2023 08:45:20 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 9D006C433C8;
 Sat,  2 Sep 2023 08:45:16 +0000 (UTC)
Date: Sat, 2 Sep 2023 10:45:14 +0200
From: Simon Horman <horms@kernel.org>
To: Jakub Kicinski <kuba@kernel.org>
Message-ID: <20230902084514.GA2146@kernel.org>
References: <20230901211718.739139-1-kuba@kernel.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20230901211718.739139-1-kuba@kernel.org>
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=kernel.org; s=k20201202; t=1693644318;
 bh=D0VKU97IUIqN1bvcHCUYCp6kzWS5ndv73r4TdZg6LEg=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=o16YLLhT69i2vF6xGy67WPGceqraJOO3yohv2/UY7wo2GrApWjzfLsB1hyvHKula1
 UfFPX2Y12JAWj3NvgYhaVtfqVMZBCzX3WdkuF4d6iJMUkrIgSNJkPh+RxhVyZ9APLr
 LHhWWQBGOgPiL2pjbWsZbxaSxv/blZD/GATDX6t9KXn4e48LEpuGsKS1iNtwHg/dEk
 zK7G3ud5lAOhseADajxGI3My4Hx1c2rwuCtgEY+47sFssxJG0De0HLIkl+NAESnPiE
 AVvE7z71O7kBsgep31PdeMGpCplnhaKiJFoT5TE83T+H1ckxloPxYxL5QTENZhyIdJ
 fdRcrT9PLT9cQ==
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org
 header.a=rsa-sha256 header.s=k20201202 header.b=o16YLLhT
Subject: Re: [Intel-wired-lan] [PATCH net] docs: netdev: update the netdev
 infra URLs
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
Cc: corbet@lwn.net, netdev@vger.kernel.org, linux-doc@vger.kernel.org,
 edumazet@google.com, intel-wired-lan@lists.osuosl.org,
 workflows@vger.kernel.org, pabeni@redhat.com, davem@davemloft.net
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

On Fri, Sep 01, 2023 at 02:17:18PM -0700, Jakub Kicinski wrote:
> Some corporate proxies block our current NIPA URLs because
> they use a free / shady DNS domain. As suggested by Jesse
> we got a new DNS entry from Konstantin - netdev.bots.linux.dev,
> use it.
> 
> Signed-off-by: Jakub Kicinski <kuba@kernel.org>

Reviewed-by: Simon Horman <horms@kernel.org>

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
