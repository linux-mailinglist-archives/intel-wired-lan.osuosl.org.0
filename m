Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
	by mail.lfdr.de (Postfix) with ESMTPS id 767F2607A52
	for <lists+intel-wired-lan@lfdr.de>; Fri, 21 Oct 2022 17:16:55 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id DBBBB42221;
	Fri, 21 Oct 2022 15:16:51 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org DBBBB42221
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1666365411;
	bh=oKGpIS3nNQOl5MAggaLv0983vwy/wbeeQ8kUizbxUH8=;
	h=Date:From:To:In-Reply-To:References:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=6qXwYKcZ9FRmvm4Wqubg2l9eCS6ZIpewitNU3wurn8yrkWo7pVJw6aA0aoG2Jcvc9
	 C+ejmQA28ibyN5atFOZXQxk1OBvRhnazg9Ee6fmr36PO9s4xqdtg3v4M+09iFpSiMO
	 xYgp7QMHQDwgHAo/tGpVm9atX/Fn23qWWaX/bhvCmkIJzE3VaqmdvpeiqCBFYwMY6h
	 QP0Gsqzjq2NQJ+JZf7hFW2f/jPdKK4RpcIgHx+xcRj1aOkKCR5bQcIpBYDrWMJ6KHa
	 I+UAo/0Y39nLNDd/3a0dwt4k1lHAejcZGy5OGpaRjBSiPdoaSYjgTSqjDijTH3t4uo
	 eArbBweDmtS+Q==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id OLVCP31YnXYa; Fri, 21 Oct 2022 15:16:51 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id 9A3BE41A5B;
	Fri, 21 Oct 2022 15:16:50 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 9A3BE41A5B
X-Original-To: intel-wired-lan@osuosl.org
Delivered-To: intel-wired-lan@osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 0FED71BF288
 for <intel-wired-lan@osuosl.org>; Fri, 21 Oct 2022 15:16:45 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id EAB80842AA
 for <intel-wired-lan@osuosl.org>; Fri, 21 Oct 2022 15:16:44 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org EAB80842AA
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id f9wUiILUodDr for <intel-wired-lan@osuosl.org>;
 Fri, 21 Oct 2022 15:16:44 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 2A7CC8406D
Received: from ams.source.kernel.org (ams.source.kernel.org
 [IPv6:2604:1380:4601:e00::1])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 2A7CC8406D
 for <intel-wired-lan@osuosl.org>; Fri, 21 Oct 2022 15:16:43 +0000 (UTC)
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by ams.source.kernel.org (Postfix) with ESMTPS id 4748EB82C87;
 Fri, 21 Oct 2022 15:16:40 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 7DC14C433D6;
 Fri, 21 Oct 2022 15:16:38 +0000 (UTC)
Date: Fri, 21 Oct 2022 08:16:37 -0700
From: Jakub Kicinski <kuba@kernel.org>
To: Richard Cochran <richardcochran@gmail.com>
Message-ID: <20221021081637.5195953b@kernel.org>
In-Reply-To: <Y1KVLAR2Qi6JeSBj@hoboy.vegasvil.org>
References: <20221018010733.4765-1-muhammad.husaini.zulkifli@intel.com>
 <Y06RzWQnTw2RJGPr@hoboy.vegasvil.org>
 <SJ1PR11MB618053D058C8171AAC4D3FADB8289@SJ1PR11MB6180.namprd11.prod.outlook.com>
 <Y09i12Wcqr0whToP@hoboy.vegasvil.org>
 <SJ1PR11MB6180F00C9051443BCEA22AB2B82D9@SJ1PR11MB6180.namprd11.prod.outlook.com>
 <Y1KVLAR2Qi6JeSBj@hoboy.vegasvil.org>
MIME-Version: 1.0
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=kernel.org; s=k20201202; t=1666365399;
 bh=rkVYIFg2K7PlTr6JQ7UFxz4FZNgle+eLu4pZ7sU4gX0=;
 h=Date:From:To:Cc:Subject:In-Reply-To:References:From;
 b=bAIebSUqM9giQkjUrSo/xPocD7OwYDevTwlp6w2EzNtajPf64YkIva06TS0Kj38K6
 /PeznQG/F+d9kLf+YmnQWPdN2x7VIu4J97mQUI66oCvQO7vuknpG+dX6dBobymBuPh
 sgnFvyqdIUJgx1JeHkXFUM0OX5wPi070ea2n9CKvVV8CxDyRoGu7vvKuwABiXJ0OtR
 +WLCKbKAEZyvKHmICaZxuV1B2tLAy60ZEUpbDMKswSjqKGU90ZAFuW+g8eeeAt0J8a
 SPmmOxENh9K8MWs2kDFpT9SF1VyzP8J70FVAFDq2EXO/4NVlJ5NfhJgQpWazJuM1Dc
 VEK3rMjCfwDDw==
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org
 header.a=rsa-sha256 header.s=k20201202 header.b=bAIebSUq
Subject: Re: [Intel-wired-lan] [PATCH v2 0/5] Add support for DMA timestamp
 for non-PTP packets
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
Cc: "leon@kernel.org" <leon@kernel.org>,
 "intel-wired-lan@osuosl.org" <intel-wired-lan@osuosl.org>,
 "gal@nvidia.com" <gal@nvidia.com>, "saeed@kernel.org" <saeed@kernel.org>,
 "edumazet@google.com" <edumazet@google.com>,
 "netdev@vger.kernel.org" <netdev@vger.kernel.org>,
 "michael.chan@broadcom.com" <michael.chan@broadcom.com>, "Zulkifli,
 Muhammad Husaini" <muhammad.husaini.zulkifli@intel.com>,
 "davem@davemloft.net" <davem@davemloft.net>,
 "andy@greyhouse.net" <andy@greyhouse.net>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

On Fri, 21 Oct 2022 05:48:44 -0700 Richard Cochran wrote:
> > Could you please provide additional details about this? What do you meant by 
> > offering 1 HW Timestamp with many SW timestamps?   
> 
> - Let the PTP stack use hardware time stamps.
> 
> - Let all other applications use software time stamps.

We do need HW stamps for congestion control, the Rx ring queuing 
(as well as Tx ring scheduling jitter) is very often in 10s of msec.
Comparing the SW stamp to the HW stamp is where we derive the signal
that the system is under excessive load.
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
