Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 122E29AE6D0
	for <lists+intel-wired-lan@lfdr.de>; Thu, 24 Oct 2024 15:38:32 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 0365A60A62;
	Thu, 24 Oct 2024 13:38:30 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id 1a8aYY8ESvKf; Thu, 24 Oct 2024 13:38:29 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 5232160A64
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1729777109;
	bh=t+sgbCXgTDSCYhfaBiuwcidCb0gkZ3FmADiNBYPcB9M=;
	h=Date:From:To:Cc:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=bhW1wLllrAsgQV4FXDjNQF6jagEXFX7xKoIzshCvMb6+urUoCi3iffC+e/fNh32mY
	 mpExuWFIfNd+DKiopgvtAehcmJddxaUETp1k9xlhXFpfNaiBXHiwRmRQt+ZFZNVWE4
	 +I/VPQdjBDwyqROjJSm2p4CYFI1ljaUQaO90IIGpKUdX+e6tjJCUDLhEX2AWhNuBer
	 tijgbsVIWeM36f3Pso4mH29rzUKmFpLkSIMTC/DlHVnMdsKR5JMNaTg1UAhB7xby+p
	 0SuSiRV+SWmGcQvIBN+p2GWL6Ix9Ynq/J5V1EcRBi8i0WiPZ28X9o/YviQth55qeAA
	 rC+U7btIqzFPA==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp3.osuosl.org (Postfix) with ESMTP id 5232160A64;
	Thu, 24 Oct 2024 13:38:29 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by lists1.osuosl.org (Postfix) with ESMTP id A5EF0972
 for <intel-wired-lan@lists.osuosl.org>; Thu, 24 Oct 2024 13:38:27 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 8699540C4E
 for <intel-wired-lan@lists.osuosl.org>; Thu, 24 Oct 2024 13:38:27 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id 4p0b3hpHxkrU for <intel-wired-lan@lists.osuosl.org>;
 Thu, 24 Oct 2024 13:38:26 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=147.75.193.91;
 helo=nyc.source.kernel.org; envelope-from=horms@kernel.org;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp2.osuosl.org AED8C40CA5
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org AED8C40CA5
Received: from nyc.source.kernel.org (nyc.source.kernel.org [147.75.193.91])
 by smtp2.osuosl.org (Postfix) with ESMTPS id AED8C40CA5
 for <intel-wired-lan@lists.osuosl.org>; Thu, 24 Oct 2024 13:38:26 +0000 (UTC)
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
 by nyc.source.kernel.org (Postfix) with ESMTP id 23280A45472;
 Thu, 24 Oct 2024 13:38:16 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id B5E34C4CEC7;
 Thu, 24 Oct 2024 13:38:23 +0000 (UTC)
Date: Thu, 24 Oct 2024 14:38:21 +0100
From: Simon Horman <horms@kernel.org>
To: Piotr Kwapulinski <piotr.kwapulinski@intel.com>
Cc: intel-wired-lan@lists.osuosl.org, netdev@vger.kernel.org,
 Stefan Wegrzyn <stefan.wegrzyn@intel.com>,
 Jedrzej Jagielski <jedrzej.jagielski@intel.com>,
 Jan Sokolowski <jan.sokolowski@intel.com>
Message-ID: <20241024133821.GO1202098@kernel.org>
References: <20241023124358.6967-1-piotr.kwapulinski@intel.com>
 <20241023124358.6967-3-piotr.kwapulinski@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20241023124358.6967-3-piotr.kwapulinski@intel.com>
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=kernel.org; s=k20201202; t=1729777105;
 bh=QBnpfM/L4EpNpMjEeHv+tPD8iPYMSO7qUuIwaT2n3sI=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=i4nAz+HdQMjZJmtPnFVh56xP17NvoZSIXD/+Qz906hIle8kEytwwmpQtt0SoYcRiM
 gr9Btvi5LHrdN3QWIE9LUEQ/jAL4eXs1coBoK2gu+DIAKMye8bsdoDPy9kptYbSfjS
 +R1+EsuvgoczqzxMU8ki06tDJLs4LW+MY3LtZceH7vQdbqrV0xrnAGM7kL6krrw8Bo
 3Ez8RolGo+AwEr6R+sOCZC76yVWyhrK9yhaXSIdvGwQXU5TuNHcc51P65uisvDmfGF
 TI4we6gztEIbX8WcVSxWww/wLfntyeC9xserlHfkdzT8KgWCpY0Djs1sqLtVhSuEBJ
 CN6eBdhT3O8wg==
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dmarc=pass (p=quarantine dis=none)
 header.from=kernel.org
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org
 header.a=rsa-sha256 header.s=k20201202 header.b=i4nAz+Hd
Subject: Re: [Intel-wired-lan] [PATCH iwl-next v10 2/7] ixgbe: Add support
 for E610 device capabilities detection
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

On Wed, Oct 23, 2024 at 02:43:53PM +0200, Piotr Kwapulinski wrote:
> Add low level support for E610 device capabilities detection. The
> capabilities are discovered via the Admin Command Interface. Discover the
> following capabilities:
> - function caps: vmdq, dcb, rss, rx/tx qs, msix, nvm, orom, reset
> - device caps: vsi, fdir, 1588
> - phy caps
> 
> Co-developed-by: Stefan Wegrzyn <stefan.wegrzyn@intel.com>
> Signed-off-by: Stefan Wegrzyn <stefan.wegrzyn@intel.com>
> Co-developed-by: Jedrzej Jagielski <jedrzej.jagielski@intel.com>
> Signed-off-by: Jedrzej Jagielski <jedrzej.jagielski@intel.com>
> Reviewed-by: Jan Sokolowski <jan.sokolowski@intel.com>
> Signed-off-by: Piotr Kwapulinski <piotr.kwapulinski@intel.com>

Reviewed-by: Simon Horman <horms@kernel.org>

