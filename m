Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 43E0E6E97CC
	for <lists+intel-wired-lan@lfdr.de>; Thu, 20 Apr 2023 16:59:54 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id D80CB6FF36;
	Thu, 20 Apr 2023 14:59:52 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org D80CB6FF36
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1682002792;
	bh=dBjtazc71Qi9wicOZfQVrhpK4Kek6YB1apUJjcnq3iM=;
	h=Date:From:To:In-Reply-To:References:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=8Lh9YB6usGAG/WaW1i1Q3UWeQiPXRM+2rqpOdTXLlZmUCj1+PGh6myPvLVjo6ASXN
	 eOfHHG4tqixvx+5Lc0V1QYYEVfxrMPLo/Oaha3XUz4K2E0QIJ+vIRmAjpvXGNb29AH
	 KY1ETWGaoa3Tin4ShenzcBQ/XX3qYtQ78IvHLE1S8jysUYodMlnw3OUip/g+9SVtD9
	 XRxw+p3IN8Do5cjk/F1kRmcIymnBwncfSqG1PbqrDx2hiQf/CSt2w2xgDtsYnIAkBD
	 /UlOW73fxC4NEFNKrdSfa3M88mo2A8r76X/kqdTYUlzSK5gDf38A+wxQH+I6y5N4Ip
	 entd2CpJChdig==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id Ey09ajASTgDo; Thu, 20 Apr 2023 14:59:52 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id D89B26FF08;
	Thu, 20 Apr 2023 14:59:51 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org D89B26FF08
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id EAC5F1BF2CD
 for <intel-wired-lan@lists.osuosl.org>; Thu, 20 Apr 2023 14:59:46 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id BC5A3418CF
 for <intel-wired-lan@lists.osuosl.org>; Thu, 20 Apr 2023 14:59:46 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org BC5A3418CF
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id Av1NyQ4MIn2Z for <intel-wired-lan@lists.osuosl.org>;
 Thu, 20 Apr 2023 14:59:46 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 026CB41866
Received: from dfw.source.kernel.org (dfw.source.kernel.org [139.178.84.217])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 026CB41866
 for <intel-wired-lan@lists.osuosl.org>; Thu, 20 Apr 2023 14:59:45 +0000 (UTC)
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by dfw.source.kernel.org (Postfix) with ESMTPS id E8BFF64A1C;
 Thu, 20 Apr 2023 14:59:44 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 30528C433EF;
 Thu, 20 Apr 2023 14:59:44 +0000 (UTC)
Date: Thu, 20 Apr 2023 07:59:43 -0700
From: Jakub Kicinski <kuba@kernel.org>
To: Alexander Lobakin <aleksander.lobakin@intel.com>
Message-ID: <20230420075943.4ef9b68a@kernel.org>
In-Reply-To: <21b89328-8c74-596b-3cfe-e71affd193a8@intel.com>
References: <20230419231751.11581-1-ahmed.zaki@intel.com>
 <21b89328-8c74-596b-3cfe-e71affd193a8@intel.com>
MIME-Version: 1.0
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=kernel.org; s=k20201202; t=1682002784;
 bh=/D8ISpki4l1J4whygb9ubLZyEG1f518zP3ZWZthbXPA=;
 h=Date:From:To:Cc:Subject:In-Reply-To:References:From;
 b=RNU4vKpt3/KIphM9zbptyAkV4k9sjA9q/cCcr3KgQi6jsSx4BLqR/gvbZeQJ+MCqH
 4nxXQ1/wlpVHSEBnHh7JAVV3Trcb6OmzGZwFaabVOG/wuzPvPZSKhds64WeB0cdxUn
 ie9rnvvJtx4cJw/bbhm75O8x17oWvAbtjtvQy3e37xwCEzvtzEAYLOOc6j1IUKisv9
 TtUvoFgvxmfaeHqKKjT0d+toQp5kIXbpraeDF2WGjLuqftkI2hQ1bC0YOwUJznTFaY
 Ji9TJ12/DhsxqeoLASnjW17MKyeTGOfI8bZuc9uAPWM+mGf9KwObfVQSoJqT6Qc1HA
 6cyv+ycDFrEIQ==
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org
 header.a=rsa-sha256 header.s=k20201202 header.b=RNU4vKpt
Subject: Re: [Intel-wired-lan] [PATCH net-next] iavf: remove double
 underscores from states names
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
Cc: "netdev@vger.kernel.org" <netdev@vger.kernel.org>,
 intel-wired-lan@lists.osuosl.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

On Thu, 20 Apr 2023 16:33:54 +0200 Alexander Lobakin wrote:
> > No need to prepend some states names with "__", especially that others do
> > not have these underscores.  
> 
> What's the value of this change, apart from 400 locs diffstat? I don't
> say having prefixes for general-purpose definitions is correct, but...
> Dunno. Would be nice to have as a part of some series with assorted
> improvements, but not standalone. Or it's just me =\

Yeah, I'm not sure it's bad enough to justify the code churn, either.
Up to you folks at Intel.
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
