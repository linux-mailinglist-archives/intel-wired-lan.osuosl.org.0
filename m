Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 0E69A9A4C0F
	for <lists+intel-wired-lan@lfdr.de>; Sat, 19 Oct 2024 10:35:28 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 68509408BD;
	Sat, 19 Oct 2024 08:35:26 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id 3fr-KHKDB-ND; Sat, 19 Oct 2024 08:35:25 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 8EA12408B7
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1729326925;
	bh=uQX/jBEcvMr8h6e3JkJi6RZA97MBG1BERS4j5S3Xk8g=;
	h=Date:From:To:Cc:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=2/VLq/iFkPYXqPNiI6se1EQq1sBiT4WGDLtIdrmGTTVqmbPe8h5An5aDm7h/GZVXJ
	 25Ucqfa0BK2PPblpVFl+t+fwqwRQx6lp7dQKpfY7sW61h6HW5ISh6aAWQXMt8Fr1Sk
	 E2SIAGVU3UeFVGMyOJ/alrF1ki05SqDV0Bg7Eirnmo4m9ZQ6Bd9geRmMN6a4UveOft
	 VsYP+dDHfXxo3FITXzFFOyGX1CGA48UT+Xr07U+25Nr9e9+jcxMCmuPuYI0gz9UfWn
	 /j7FMdoEt5fPivK8A1yUvttYM8LwtVkEvj+a3f/j2sx58yGzjqsqpgtSvMJxoV1tyI
	 V7mJigFcz5YNQ==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp4.osuosl.org (Postfix) with ESMTP id 8EA12408B7;
	Sat, 19 Oct 2024 08:35:25 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by lists1.osuosl.org (Postfix) with ESMTP id C4DF33A23
 for <intel-wired-lan@lists.osuosl.org>; Sat, 19 Oct 2024 08:35:23 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id B2B324015D
 for <intel-wired-lan@lists.osuosl.org>; Sat, 19 Oct 2024 08:35:23 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id y-pNElaAR2SW for <intel-wired-lan@lists.osuosl.org>;
 Sat, 19 Oct 2024 08:35:23 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=147.75.193.91;
 helo=nyc.source.kernel.org; envelope-from=horms@kernel.org;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp4.osuosl.org E5E7D408B2
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org E5E7D408B2
Received: from nyc.source.kernel.org (nyc.source.kernel.org [147.75.193.91])
 by smtp4.osuosl.org (Postfix) with ESMTPS id E5E7D408B2
 for <intel-wired-lan@lists.osuosl.org>; Sat, 19 Oct 2024 08:35:22 +0000 (UTC)
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
 by nyc.source.kernel.org (Postfix) with ESMTP id D321FA40295;
 Sat, 19 Oct 2024 08:35:12 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 95410C4CEC5;
 Sat, 19 Oct 2024 08:35:19 +0000 (UTC)
Date: Sat, 19 Oct 2024 09:35:17 +0100
From: Simon Horman <horms@kernel.org>
To: Przemek Kitszel <przemyslaw.kitszel@intel.com>
Cc: intel-wired-lan@lists.osuosl.org,
 Tony Nguyen <anthony.l.nguyen@intel.com>, netdev@vger.kernel.org,
 Jacob Keller <jacob.e.keller@intel.com>,
 Paul Greenwalt <paul.greenwalt@intel.com>,
 Ahmed Zaki <ahmed.zaki@intel.com>, Dan Nowlin <dan.nowlin@intel.com>,
 Michal Swiatkowski <michal.swiatkowski@linux.intel.com>,
 Pucha Himasekhar Reddy <himasekharx.reddy.pucha@intel.com>
Message-ID: <20241019083517.GK1697@kernel.org>
References: <20241018141823.178918-4-przemyslaw.kitszel@intel.com>
 <20241018141823.178918-6-przemyslaw.kitszel@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20241018141823.178918-6-przemyslaw.kitszel@intel.com>
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=kernel.org; s=k20201202; t=1729326921;
 bh=zRFQMEYNsQS8URWjkAwCdUcTxZ2YaSxA6ImkdKBhBqM=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=NBJwaW41j8Ktq4XuagYkoRNWfTXac6uUfWWCsBCI0DqmmkTsttl60Z3sbw/fiN+PR
 m0anlfH/KcLvWl7qntLfU47j++nddyh3rKy4h4GHWwRwiDlIJjNoZqhlQsyZGW6OH1
 QK6pQPw8v0YaEXGa6D3nm8sgjNKsRmIyG6zcyLm907WGZUiaAkEWra//jECzK461NK
 iQmH9v+zIdqybU/7WFUammaUxoOadiLF9AL4TJh8zwQ1o2MtL5fRNhsoSdO+QocLn9
 fnseOZDvolp1RrghWeDD08A7xHpV+HC7dU1sqWMk+OqfGejJjmMZP3JwTVTwnf7wQa
 QUA15vC7Tnmqg==
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dmarc=pass (p=quarantine dis=none)
 header.from=kernel.org
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org
 header.a=rsa-sha256 header.s=k20201202 header.b=NBJwaW41
Subject: Re: [Intel-wired-lan] [PATCH iwl-next v3 2/2] ice: support optional
 flags in signature segment header
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

On Fri, Oct 18, 2024 at 04:17:37PM +0200, Przemek Kitszel wrote:
> An optional flag field has been added to the signature segment header.
> The field contains two flags, a "valid" bit, and a "last segment" bit
> that indicates whether the segment is the last segment that will be
> sent to firmware.
> 
> If the flag field's valid bit is NOT set, then as was done before,
> assume that this is the last segment being downloaded.
> 
> However, if the flag field's valid bit IS set, then use the last segment
> flag to determine if this segment is the last segment to download.
> 
> Signed-off-by: Paul Greenwalt <paul.greenwalt@intel.com>
> Signed-off-by: Ahmed Zaki <ahmed.zaki@intel.com>
> Co-developed-by: Dan Nowlin <dan.nowlin@intel.com>
> Signed-off-by: Dan Nowlin <dan.nowlin@intel.com>
> Reviewed-by: Michal Swiatkowski <michal.swiatkowski@linux.intel.com>
> Tested-by: Pucha Himasekhar Reddy <himasekharx.reddy.pucha@intel.com> (A Contingent worker at Intel)
> Signed-off-by: Przemek Kitszel <przemyslaw.kitszel@intel.com>
> ---
> v2: co/- authorship change

Reviewed-by: Simon Horman <horms@kernel.org>

