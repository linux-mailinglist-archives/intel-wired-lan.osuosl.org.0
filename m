Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
	by mail.lfdr.de (Postfix) with ESMTPS id D253FADBCAF
	for <lists+intel-wired-lan@lfdr.de>; Tue, 17 Jun 2025 00:12:29 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 5E29B40C59;
	Mon, 16 Jun 2025 22:12:28 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id oHxPnJc75tpY; Mon, 16 Jun 2025 22:12:28 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org DFEAC40C45
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1750111947;
	bh=5so4a3ZaLkKNDTpjw7O00LHYTXNUQUy+sBTGtxa6KO8=;
	h=Date:From:To:Cc:In-Reply-To:References:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=QmK6IdQ3Sxgzkc19jP++pq4EGWKkrptjw5L7HEhS2m/l0eFYWS/VBqJwoPRG++EtU
	 w0lFpkwi2UXI54Kg55ZMq6SoWUCxY/tajiAyosAhrCv17R+Uw1DiOEwHJD5uLIMxol
	 5rCQiGOYI5sUWkjo6MbgPvZjNNKy8mVGGAx1Q6nKVaI3+vvJVpdmB092QUrp1G1q0/
	 A7pEUNtzuO9C2Bz9aezdWja0po9EMaAb3U82hA4tGqxZBH4dKGWacbotqzxRORXimm
	 ETZBIsKJoCEK+011YA5M7Pqz2+ltXt9RvS4fQ0j9wW89+DLWfCbfn8qfiQgFIQhEGa
	 wkr59FnJpVyUA==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp4.osuosl.org (Postfix) with ESMTP id DFEAC40C45;
	Mon, 16 Jun 2025 22:12:27 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
 by lists1.osuosl.org (Postfix) with ESMTP id 7A6B7151
 for <intel-wired-lan@lists.osuosl.org>; Mon, 16 Jun 2025 22:12:26 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 778E88137A
 for <intel-wired-lan@lists.osuosl.org>; Mon, 16 Jun 2025 22:12:26 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id vnLBrWTXVx1f for <intel-wired-lan@lists.osuosl.org>;
 Mon, 16 Jun 2025 22:12:26 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=172.105.4.254;
 helo=tor.source.kernel.org; envelope-from=kuba@kernel.org; receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp1.osuosl.org EFAEF8125A
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org EFAEF8125A
Received: from tor.source.kernel.org (tor.source.kernel.org [172.105.4.254])
 by smtp1.osuosl.org (Postfix) with ESMTPS id EFAEF8125A
 for <intel-wired-lan@lists.osuosl.org>; Mon, 16 Jun 2025 22:12:25 +0000 (UTC)
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
 by tor.source.kernel.org (Postfix) with ESMTP id E36B4629C0;
 Mon, 16 Jun 2025 22:12:24 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 05756C4CEEA;
 Mon, 16 Jun 2025 22:12:23 +0000 (UTC)
Date: Mon, 16 Jun 2025 15:12:23 -0700
From: Jakub Kicinski <kuba@kernel.org>
To: Arkadiusz Kubalewski <arkadiusz.kubalewski@intel.com>
Cc: donald.hunter@gmail.com, davem@davemloft.net, edumazet@google.com,
 pabeni@redhat.com, horms@kernel.org, vadim.fedorenko@linux.dev,
 jiri@resnulli.us, anthony.l.nguyen@intel.com, przemyslaw.kitszel@intel.com,
 andrew+netdev@lunn.ch, aleksandr.loktionov@intel.com, corbet@lwn.net,
 netdev@vger.kernel.org, linux-kernel@vger.kernel.org,
 intel-wired-lan@lists.osuosl.org, linux-rdma@vger.kernel.org,
 linux-doc@vger.kernel.org, Milena Olech <milena.olech@intel.com>
Message-ID: <20250616151223.52254699@kernel.org>
In-Reply-To: <20250613200655.1712561-4-arkadiusz.kubalewski@intel.com>
References: <20250613200655.1712561-1-arkadiusz.kubalewski@intel.com>
 <20250613200655.1712561-4-arkadiusz.kubalewski@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=US-ASCII
Content-Transfer-Encoding: 7bit
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=kernel.org; s=k20201202; t=1750111944;
 bh=3ceT7BZbCVCNTYjqfooM+q41Q7d1VC/hi+bt2AMBtnA=;
 h=Date:From:To:Cc:Subject:In-Reply-To:References:From;
 b=Q5XN+xWuhXCfOQcdPHsSdVRAO8wfLoy9pHfjPC0la+CwaaL2P5FesPuXTq5FoLiKw
 ahFX5QlM/q97teeUlWRPokLCeIw6vurmLK6B1LQ4CuH7TY/8GgQ/TpEV2junSK+3gK
 UelUh0dkDmUDzh9++nLKxeZtiOh9qee+3qqEfqFESDKqjLHjJk+RXti5eBY04sdvPo
 jq8c/apXuokzK2HcqFZATpyYuBTly5GR9noHprYnlF8q5FkicB77KGKCay9mqFXjhk
 r5/IYOxzZe05mUWP2ODe5hNy226g1f5hRZYdrigFZUnBiNYUfLP7ybTPcgIHVpCmdQ
 3R0RV86OLZxAg==
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dmarc=pass (p=quarantine dis=none)
 header.from=kernel.org
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org
 header.a=rsa-sha256 header.s=k20201202 header.b=Q5XN+xWu
Subject: Re: [Intel-wired-lan] [PATCH net-next v6 3/3] ice: add ref-sync
 dpll pins
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

On Fri, 13 Jun 2025 22:06:55 +0200 Arkadiusz Kubalewski wrote:
> - rebase and align with introducation of software pins

Another conflict, probably with the other DPLL series.
One more respin, please.
-- 
pw-bot: cr
