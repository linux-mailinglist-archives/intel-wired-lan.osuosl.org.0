Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
	by mail.lfdr.de (Postfix) with ESMTPS id E5A6FB0DF96
	for <lists+intel-wired-lan@lfdr.de>; Tue, 22 Jul 2025 16:54:36 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 4E35A615E6;
	Tue, 22 Jul 2025 14:54:35 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id 1f9fprI1BDNi; Tue, 22 Jul 2025 14:54:34 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org CAC8F615C7
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1753196074;
	bh=q5pQikswMjp1FNEuxX4RxwlOh3ORVZOY9M89Eurj1js=;
	h=Date:From:To:Cc:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=QUhU3xKBTrS8PGkC1OMvjlS/CkffBBqNnNG0Y2fcRhf8jFTkw7hi3UyCibumj2REj
	 O1XCasRfnIJ04d9MOSJ320i0hB/OXF6qjxN4FQZtmB8O4VrIWFoAkj9S2uEMxdeqzG
	 ZxZV2DA03yn5KezMr1TEpN6Z9r5IAeWdqcEzlt4HQJBGHvaAKkYj8D4Wg/isI2fGwg
	 ageWclWJ4SzjituCkaEEGKm7HLkRM+QjMBAmXxigGsI4SjOhHtVXwlLiS9BHWH4Wph
	 lwdhFCSbVeG2HSWyG399Z8pQHmrgHSOJH6qxPPipq/nmIANhr4/goGOt68BPBDbg5d
	 +YjYQKyPpcbbg==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp3.osuosl.org (Postfix) with ESMTP id CAC8F615C7;
	Tue, 22 Jul 2025 14:54:34 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by lists1.osuosl.org (Postfix) with ESMTP id BA180CD
 for <intel-wired-lan@lists.osuosl.org>; Tue, 22 Jul 2025 14:54:32 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id B655981F87
 for <intel-wired-lan@lists.osuosl.org>; Tue, 22 Jul 2025 14:54:32 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id svFKBQ0O3GlE for <intel-wired-lan@lists.osuosl.org>;
 Tue, 22 Jul 2025 14:54:32 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom;
 client-ip=2600:3c0a:e001:78e:0:1991:8:25; helo=sea.source.kernel.org;
 envelope-from=horms@kernel.org; receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp1.osuosl.org 211AC80991
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 211AC80991
Received: from sea.source.kernel.org (sea.source.kernel.org
 [IPv6:2600:3c0a:e001:78e:0:1991:8:25])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 211AC80991
 for <intel-wired-lan@lists.osuosl.org>; Tue, 22 Jul 2025 14:54:32 +0000 (UTC)
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
 by sea.source.kernel.org (Postfix) with ESMTP id 993F144EBC;
 Tue, 22 Jul 2025 14:54:31 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 6155CC4CEEB;
 Tue, 22 Jul 2025 14:54:30 +0000 (UTC)
Date: Tue, 22 Jul 2025 15:54:28 +0100
From: Simon Horman <horms@kernel.org>
To: Michal Swiatkowski <michal.swiatkowski@linux.intel.com>
Cc: intel-wired-lan@lists.osuosl.org, netdev@vger.kernel.org,
 przemyslaw.kitszel@intel.com, dawid.osuchowski@linux.intel.com
Message-ID: <20250722145428.GM2459@horms.kernel.org>
References: <20250722104600.10141-1-michal.swiatkowski@linux.intel.com>
 <20250722104600.10141-10-michal.swiatkowski@linux.intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20250722104600.10141-10-michal.swiatkowski@linux.intel.com>
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=kernel.org; s=k20201202; t=1753196071;
 bh=d5Dgo/SP2frqJQVMsqQJtgDsR0zcroc9Ub5WH+3oids=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=asGNOylE9Z7BKj65LuJd+1BMWxHf8yVl9Hvg2q6sE/15sBS8nONUAgH/tebTcMooE
 wU3Bg7Sqi2zAb4rhMmjIkZduzVRl5uGmWd8r+5y25aykVvSTMaY3JXXIvptO+Cfviu
 WSiL3S/tXfxiBf4Bvi7Q8wtmGbCpHdBDM1yggQX7QTB6fskrV2BBrdkvFVNhKrZ6EA
 FMU95Sii2ju+lG8Bo/RuM74Hcks+xZfFIoNjQz35yY89c4pcwteyWkzSKmqCDiF53t
 ziNcUJ32nmp+oN+IFflvHN333zwIBBS5eImK24GNnOhmp7pHCkCmsTs79604QSyqQ/
 H6N3ZLfUVbQpg==
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dmarc=pass (p=quarantine dis=none)
 header.from=kernel.org
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org
 header.a=rsa-sha256 header.s=k20201202 header.b=asGNOylE
Subject: Re: [Intel-wired-lan] [PATCH iwl-next v1 09/15] ice: drop driver
 specific structure from fwlog code
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

On Tue, Jul 22, 2025 at 12:45:54PM +0200, Michal Swiatkowski wrote:
> In debugfs pass ice_fwlog structure instead of ice_pf.
> 
> The debgufs dirs specific for fwlog can be stored in fwlog structure.
> 
> Add debugfs entry point to fwlog api.
> 
> Reviewed-by: Przemek Kitszel <przemyslaw.kitszel@intel.com>
> Signed-off-by: Michal Swiatkowski <michal.swiatkowski@linux.intel.com>

...

> diff --git a/drivers/net/ethernet/intel/ice/ice_debugfs.c b/drivers/net/ethernet/intel/ice/ice_debugfs.c

...

> @@ -580,9 +569,10 @@ static const struct file_operations ice_debugfs_data_fops = {
>  
>  /**
>   * ice_debugfs_fwlog_init - setup the debugfs directory
> - * @pf: the ice that is starting up
> + * @fwlog: pointer to the fwlog structure
> + * @root: debugfs root entry on which fwlog director will be registered
>   */
> -void ice_debugfs_fwlog_init(struct ice_pf *pf)
> +void ice_debugfs_fwlog_init(struct ice_fwlog *fwlog, struct dentry *root)
>  {
>  	struct dentry *fw_modules_dir;
>  	struct dentry **fw_modules;
> @@ -598,41 +588,39 @@ void ice_debugfs_fwlog_init(struct ice_pf *pf)
>  
>  	pf->ice_debugfs_pf_fwlog = debugfs_create_dir("fwlog",
>  						      pf->ice_debugfs_pf);

pf no longer exists in this context.

> -	if (IS_ERR(pf->ice_debugfs_pf_fwlog))
> +	if (IS_ERR(fwlog->debugfs))
>  		goto err_create_module_files;
>  
> -	fw_modules_dir = debugfs_create_dir("modules",
> -					    pf->ice_debugfs_pf_fwlog);
> +	fw_modules_dir = debugfs_create_dir("modules", fwlog->debugfs);
>  	if (IS_ERR(fw_modules_dir))
>  		goto err_create_module_files;

...
