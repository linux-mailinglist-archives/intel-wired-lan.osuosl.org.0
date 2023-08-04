Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
	by mail.lfdr.de (Postfix) with ESMTPS id D821D770254
	for <lists+intel-wired-lan@lfdr.de>; Fri,  4 Aug 2023 15:52:57 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 4096241EED;
	Fri,  4 Aug 2023 13:52:56 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 4096241EED
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1691157176;
	bh=PbaDyAFmgeTUTnCJ40q6rzfbLEtbqB5bo4PayfVliVg=;
	h=Date:From:To:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=FQ3Yx5pFIjUkEU6+Gbl5AN8JwmIOSRgEjCsG+aKErhvfPxjm0HXr9+ctme5dddkRQ
	 +1DaAagt5KeC4YX4mlfkiTdF9p0m0sJDL4mJViRMbVjeQug5UBUL9ewEH3VYB3ULJU
	 voK6H1zqSAXjOYF93Qqqlh4G1eETcqQY0x+kyOk6liM9H+3uO8yFWyMcSuiUn0MHMH
	 m7ykoeDOKWYlsaOBifWM2II24FJ9CONCWw7n6lJLH92TwNtfmqezmWiCeXlUlSLblx
	 VLYNtMs56qeOEiEJXSgoEacONRQph8qMFQ6QAiRwxI6jjr+Rk1X47f1KZ+pTGprYJh
	 oKbs6muj+AU1Q==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id O0rbXZQFMOqH; Fri,  4 Aug 2023 13:52:55 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id E2AD941EFF;
	Fri,  4 Aug 2023 13:52:54 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org E2AD941EFF
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id F00441BF27E
 for <intel-wired-lan@lists.osuosl.org>; Fri,  4 Aug 2023 13:52:49 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 9BACC84033
 for <intel-wired-lan@lists.osuosl.org>; Fri,  4 Aug 2023 13:52:35 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 9BACC84033
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id jYnZbMFrRkjQ for <intel-wired-lan@lists.osuosl.org>;
 Fri,  4 Aug 2023 13:52:35 +0000 (UTC)
Received: from dfw.source.kernel.org (dfw.source.kernel.org [139.178.84.217])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 2250E83B7F
 for <intel-wired-lan@lists.osuosl.org>; Fri,  4 Aug 2023 13:52:34 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 2250E83B7F
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
 (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
 key-exchange X25519 server-signature RSA-PSS (2048 bits))
 (No client certificate requested)
 by dfw.source.kernel.org (Postfix) with ESMTPS id C3E296203B;
 Fri,  4 Aug 2023 13:52:33 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 7A6D4C433C7;
 Fri,  4 Aug 2023 13:52:31 +0000 (UTC)
Date: Fri, 4 Aug 2023 15:52:28 +0200
From: Simon Horman <horms@kernel.org>
To: Yue Haibing <yuehaibing@huawei.com>
Message-ID: <ZM0CnDts6dx7i4kD@kernel.org>
References: <20230803141904.15316-1-yuehaibing@huawei.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20230803141904.15316-1-yuehaibing@huawei.com>
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=kernel.org; s=k20201202; t=1691157153;
 bh=sp0Gy9/iy/CSN4Ks/r5KI9WJQmANhwvtLTr+VmIddCk=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=QDsSgnZR2YLQKCEZogU9QFyPmQYicXDppoD163D7ImF6hJL7bvaPX6YR2ij+gfvtH
 aJ5TK0A3PbZkio5lflcUykEAvvY8hCYodfYXBhg4fGcyHrX7YO1LdKJP+FAAlQTNiT
 oxA8A+dRwcS+btAX46rWT75GzcIY32tF2i63teB2lxtDxYHK34GOuFnP1+5Z6K/4NL
 go/UZav4hLMzvX3ur0emWvf+StrutjElQij0QLtGTMh8pS6oSIsAD/gj8tu/d4oOqT
 SGLCNm0rqTQkyJV4F7PMxHeZisPDdSlJwYMrv/yHkzjr0SwhjxILSdah74IV3kX56e
 PfTTCl8D3q9Qw==
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org
 header.a=rsa-sha256 header.s=k20201202 header.b=QDsSgnZR
Subject: Re: [Intel-wired-lan] [PATCH net-next] ixgbevf: Remove unused
 function declarations
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
Cc: intel-wired-lan@lists.osuosl.org, jesse.brandeburg@intel.com,
 edumazet@google.com, anthony.l.nguyen@intel.com, netdev@vger.kernel.org,
 kuba@kernel.org, pabeni@redhat.com, davem@davemloft.net
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

On Thu, Aug 03, 2023 at 10:19:04PM +0800, Yue Haibing wrote:
> ixgbe_napi_add_all()/ixgbe_napi_del_all() are declared but never implemented in
> commit 92915f71201b ("ixgbevf: Driver main and ethool interface module and main header")
> 
> Signed-off-by: Yue Haibing <yuehaibing@huawei.com>

Reviewed-by: Simon Horman <horms@kernel.org>

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
