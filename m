Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 13F26C07814
	for <lists+intel-wired-lan@lfdr.de>; Fri, 24 Oct 2025 19:14:03 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 9322060D67;
	Fri, 24 Oct 2025 17:14:01 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id XgNZQ2nCyYpm; Fri, 24 Oct 2025 17:14:01 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 1ABD560D6A
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1761326041;
	bh=NcAGER8eq0CfEhln64w86euR+L34w+M2lJarYBC9O4A=;
	h=Date:From:To:Cc:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=NMHa3vzcekKjywTpnQsjZUOCIREwTH9Sx3ApeXM7WJaEF9VJ1BBtFdiK+r3B+/DgV
	 w0lr6+8WK9tpQp2Yb/6Hyg9aJNYO6tyFyGccH3VDiAajNBFNWDPS24kmgbh2iKkrZA
	 XScTujlAN+W7nItv0vyv99RIOxS3sOM3GAjbLfCz88IYcw21jeERaa2gT27V1xaLuY
	 HMYyWlFDg9poZu0mqhNrZGNW06Yrp36oxcPbKrvLni3hbuPRcwEvsXibFlZyGxb3Bp
	 wZ3ByDHbVC2JFX0OK79wF8zxUYTKDkEdBld7OhFISPnoxu5cgH23oDy1PtErU/lgpk
	 pPjFNSbtOHiMQ==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp3.osuosl.org (Postfix) with ESMTP id 1ABD560D6A;
	Fri, 24 Oct 2025 17:14:01 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
 by lists1.osuosl.org (Postfix) with ESMTP id E321143F
 for <intel-wired-lan@lists.osuosl.org>; Fri, 24 Oct 2025 17:13:59 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id D46D140A44
 for <intel-wired-lan@lists.osuosl.org>; Fri, 24 Oct 2025 17:13:59 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id oGbg9E4889hL for <intel-wired-lan@lists.osuosl.org>;
 Fri, 24 Oct 2025 17:13:59 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=172.234.252.31;
 helo=sea.source.kernel.org; envelope-from=horms@kernel.org;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp4.osuosl.org E3B8B40A40
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org E3B8B40A40
Received: from sea.source.kernel.org (sea.source.kernel.org [172.234.252.31])
 by smtp4.osuosl.org (Postfix) with ESMTPS id E3B8B40A40
 for <intel-wired-lan@lists.osuosl.org>; Fri, 24 Oct 2025 17:13:58 +0000 (UTC)
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
 by sea.source.kernel.org (Postfix) with ESMTP id 2924D451C8;
 Fri, 24 Oct 2025 17:13:58 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id B1F04C4CEF1;
 Fri, 24 Oct 2025 17:13:55 +0000 (UTC)
Date: Fri, 24 Oct 2025 18:13:53 +0100
From: Simon Horman <horms@kernel.org>
To: Alok Tiwari <alok.a.tiwari@oracle.com>
Cc: aleksander.lobakin@intel.com, anthony.l.nguyen@intel.com,
 przemyslaw.kitszel@intel.com, andrew+netdev@lunn.ch,
 kuba@kernel.org, davem@davemloft.net, edumazet@google.com,
 pabeni@redhat.com, intel-wired-lan@lists.osuosl.org,
 netdev@vger.kernel.org, alok.a.tiwarilinux@gmail.com
Message-ID: <aPuz0XU-GBgp3uZj@horms.kernel.org>
References: <20251024134636.1464666-1-alok.a.tiwari@oracle.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20251024134636.1464666-1-alok.a.tiwari@oracle.com>
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=kernel.org; s=k20201202; t=1761326038;
 bh=vCj3JyBSagu2BqdN1iDi3uOBOf1FnuZwAY/n0Ks53ps=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=qI1/mNXqXdn+lotnU3ZMMjED/0E+/BBICY9wHwkh/vP62PWqpehsYDdw1axxAP+GN
 exemOjBLewYW/tFcATTDwK00dKJuYGQ3dLmmAhEXFj309nMCAQsrlcoZnL/QAeunOk
 ylFPgW2+3LJjvseLYXFTCrxe+riMdWO1tjXwRpXEsfwPiSTZdv8ZVhxYsaDL9LID8e
 DMToEoGIPpZve+ktGTXwZfC0XmWM9rIluBIGnoq61vboIIPEmOhDo70RaLNrAnakBN
 0o1VCLiiQ3PNprdZD3F7TCNrzohbk8kIQr6MBZsOPu3iRH9d7Bf555OBE2XJQst8un
 ToE5MsogqDcaA==
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dmarc=pass (p=quarantine dis=none)
 header.from=kernel.org
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=kernel.org header.i=@kernel.org header.a=rsa-sha256
 header.s=k20201202 header.b=qI1/mNXq
Subject: Re: [Intel-wired-lan] [PATCH net-next] iavf: fix incorrect warning
 message in iavf_del_vlans()
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

On Fri, Oct 24, 2025 at 06:46:26AM -0700, Alok Tiwari wrote:
> The warning message refers to "add VLAN changes" instead of
> "delete VLAN changes". Update the log string to use the correct text.
> 
> Signed-off-by: Alok Tiwari <alok.a.tiwari@oracle.com>
> ---
>  drivers/net/ethernet/intel/iavf/iavf_virtchnl.c | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)
> 
> diff --git a/drivers/net/ethernet/intel/iavf/iavf_virtchnl.c b/drivers/net/ethernet/intel/iavf/iavf_virtchnl.c
> index 34a422a4a29c..6ad91db027d3 100644
> --- a/drivers/net/ethernet/intel/iavf/iavf_virtchnl.c
> +++ b/drivers/net/ethernet/intel/iavf/iavf_virtchnl.c
> @@ -987,7 +987,7 @@ void iavf_del_vlans(struct iavf_adapter *adapter)
>  
>  		len = virtchnl_struct_size(vvfl_v2, filters, count);
>  		if (len > IAVF_MAX_AQ_BUF_SIZE) {
> -			dev_warn(&adapter->pdev->dev, "Too many add VLAN changes in one request\n");
> +			dev_warn(&adapter->pdev->dev, "Too many delete VLAN changes in one request\n");
>  			while (len > IAVF_MAX_AQ_BUF_SIZE)
>  				len = virtchnl_struct_size(vvfl_v2, filters,
>  							   --count);

Thanks, this seems to be a copy-paste error as the text being
updated also appears in the preceding function in this file,
iavf_add_vlans().

Reviewed-by: Simon Horman <horms@kernel.org>

