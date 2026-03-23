Return-Path: <intel-wired-lan-bounces@osuosl.org>
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id aEbIJIbDwWkHWQQAu9opvQ
	(envelope-from <intel-wired-lan-bounces@osuosl.org>)
	for <lists+intel-wired-lan@lfdr.de>; Mon, 23 Mar 2026 23:49:42 +0100
X-Original-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
	by mail.lfdr.de (Postfix) with ESMTPS id 111E32FE845
	for <lists+intel-wired-lan@lfdr.de>; Mon, 23 Mar 2026 23:49:42 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 57B4D40DB8;
	Mon, 23 Mar 2026 22:49:40 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id MwIeGcrtFDug; Mon, 23 Mar 2026 22:49:39 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org CD6B640DB3
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1774306179;
	bh=096Np4OKL8mNrGXzkOzGuqkDmb4xQw5LjvKwCTOMir0=;
	h=Date:From:To:Cc:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=GdCIz7zn2i7GCka8RpgMoJW+9Um7Kc+ATnk5y/bnkumoi39guOWqrO/cwnJcJTCbb
	 B4UqgNpBxc0yBmAnf4PABymSTpdcZrY9czyUUD5UAXLYf/KQ0yH7jzbxe/qcqOmuOO
	 zX/qxRrL8AxHt2ARoU1ZenTs3N5rAoipUT6E6s36qmmtM1taMFArW//rbs+Tmvimuk
	 utvfU5o0BywcN9BP+7Jo3Kq5/O+cIex7JK2gpF1YlGkCER4I6pCkc2tG6OuUFZDHoW
	 HMnkCSgmOLD0zweBoSZN0j+te1XS6vbeZ9CPvD6w1WS4BCqLkM7baTGzUccIZxvJTE
	 yquOGSlpjcqHQ==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp4.osuosl.org (Postfix) with ESMTP id CD6B640DB3;
	Mon, 23 Mar 2026 22:49:39 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [IPv6:2605:bc80:3010::133])
 by lists1.osuosl.org (Postfix) with ESMTP id 284021D3
 for <intel-wired-lan@lists.osuosl.org>; Mon, 23 Mar 2026 22:49:38 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 19E4A40127
 for <intel-wired-lan@lists.osuosl.org>; Mon, 23 Mar 2026 22:49:38 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id 5l7kVHsCcqdz for <intel-wired-lan@lists.osuosl.org>;
 Mon, 23 Mar 2026 22:49:37 +0000 (UTC)
Received-SPF: None (mailfrom) identity=mailfrom;
 client-ip=2607:f8b0:4864:20::431; helo=mail-pf1-x431.google.com;
 envelope-from=joe@dama.to; receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp2.osuosl.org AA07040364
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org AA07040364
Received: from mail-pf1-x431.google.com (mail-pf1-x431.google.com
 [IPv6:2607:f8b0:4864:20::431])
 by smtp2.osuosl.org (Postfix) with ESMTPS id AA07040364
 for <intel-wired-lan@lists.osuosl.org>; Mon, 23 Mar 2026 22:49:36 +0000 (UTC)
Received: by mail-pf1-x431.google.com with SMTP id
 d2e1a72fcca58-82c28f0a4ecso2031721b3a.3
 for <intel-wired-lan@lists.osuosl.org>; Mon, 23 Mar 2026 15:49:36 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20251104; t=1774306176; x=1774910976;
 h=in-reply-to:content-disposition:mime-version:references
 :mail-followup-to:message-id:subject:cc:to:from:date:x-gm-gg
 :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
 bh=096Np4OKL8mNrGXzkOzGuqkDmb4xQw5LjvKwCTOMir0=;
 b=KUC8sn5USeqpJaWtKvWU6jx+7ZwYG38Wrl5zRcNOTCf6/QivlDeSd6Rd2Ddalf2yJg
 BPOfu3uo6CKTmbTtXAoWlb6hCYcUFpb1TnRKwmfZVl63uWsjOdgXqIx2vfcToGahxUGz
 ZYtNa3ev8WPnyBQB07W/zDh+Cx4Pq191BPHvCP2WBlHw8NyVm+eXMyqMX1dkjGyiCphi
 x/DoAzhwIRH6/g4DHBdkK5nThWmWzJil9C95ueJMh8sSZarUOliOZxx8zhRSQgoqzKnK
 cUo2U31LrflAAOp/TaTAfotjgygc6zNk2ZEgDM6H2sGxINkkkbF9Sr7XZpjrYf8XDk5a
 oFww==
X-Gm-Message-State: AOJu0YzLiMO1//J8RgL/3PjbLifoNE4ItDLYOspmGO/7udEvADYLJGjY
 Mvjm9f67TSEbF/TVJ9C6fSeW5xTg7Xdc6X4deU8jV/K3WXEpie+IeQwnqoCdak1dfXM=
X-Gm-Gg: ATEYQzwZfpM5/66MwrVI/1DOnFXsv24MNdRhA1yrgPK9BmOE+bWFwlSN6kPIWqhE7m2
 C9rW+/xjuES71pnJzQLdvi0mRPdKXWg2RKZI5+rF0PHssmEUN/A3NxAgV8Z/sOpVeE4sEMiSfkt
 YZcE7Pfw2Tx+8SHmmkwRrUQ93Y+7ZeL54PbZGPUlysl2lZITr/d3wqXsLg3ics/ppzgKP5XIb1z
 KzBnGzNSxqjYnhLkUmDlmW3E7hVkUnuhpQuksm17QkCWJLoFU3NAQhMzjB86k8tIhY6HKwZSTw9
 slAZGpXtqzv+S3srEme6LiaWaf3zwXCaBIPUNFbEcs75Z5WLScQr0r7U/ELWvXYMhYcC8CWMtCD
 Y0V+B05GC25glSYEjLjZn9N4TPvHtdU/R8zmrJYc/JNV9omXe6eYx/2zeYAsX8jnXW7JwtwgGSQ
 nSHLP4
X-Received: by 2002:a05:6a00:3c8b:b0:82a:768c:9a2c with SMTP id
 d2e1a72fcca58-82a8c23e434mr11786207b3a.22.1774306175908; 
 Mon, 23 Mar 2026 15:49:35 -0700 (PDT)
Received: from localhost ([2a03:2880:2ff:72::])
 by smtp.gmail.com with ESMTPSA id
 d2e1a72fcca58-82b0409b455sm10515326b3a.28.2026.03.23.15.49.34
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 23 Mar 2026 15:49:35 -0700 (PDT)
Date: Mon, 23 Mar 2026 15:49:33 -0700
From: Joe Damato <joe@dama.to>
To: Aleksandr Loktionov <aleksandr.loktionov@intel.com>
Cc: intel-wired-lan@lists.osuosl.org, anthony.l.nguyen@intel.com,
 netdev@vger.kernel.org, Marcin Szycik <marcin.szycik@intel.com>
Message-ID: <acHDfSbnc/f3nkQf@devvm20253.cco0.facebook.com>
Mail-Followup-To: Joe Damato <joe@dama.to>,
 Aleksandr Loktionov <aleksandr.loktionov@intel.com>,
 intel-wired-lan@lists.osuosl.org, anthony.l.nguyen@intel.com,
 netdev@vger.kernel.org, Marcin Szycik <marcin.szycik@intel.com>
References: <20260323095056.3298435-1-aleksandr.loktionov@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20260323095056.3298435-1-aleksandr.loktionov@intel.com>
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=dama-to.20230601.gappssmtp.com; s=20230601; t=1774306176; x=1774910976;
 darn=lists.osuosl.org; 
 h=in-reply-to:content-disposition:mime-version:references
 :mail-followup-to:message-id:subject:cc:to:from:date:from:to:cc
 :subject:date:message-id:reply-to;
 bh=096Np4OKL8mNrGXzkOzGuqkDmb4xQw5LjvKwCTOMir0=;
 b=SPJtv7AwdQ7YB/fcMXDt6d6bM0MracvQFs3R1XzuYH6j9s/P1L9PpY00cM+BKk79YZ
 v8Tjj7lJs/0cfnUmPQvix3U6p7M9CoUF4IUM17JIOoFA/sSMY+m39Ni3sQCnqhC7XoxZ
 MlMBI4mJhbTUIm5DQ5y9N8cJ5wWWmSSkb9KGw+na8TN2qX704mX4kch5+ca1D2FLXriW
 kUm3hGiOL8pHUwTikihetWb2HczAxSqVEFQ2wmnudK+J4TGC6oS0HsQfjm4wuwEGp0p8
 iNaFG09thFYZZ/R285NVddNX25ZJNVBGQnZ9Zu7YUxTvzRHTtTLOPF7RsRmL3a/vqD6e
 6sdw==
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dmarc=none (p=none dis=none)
 header.from=dama.to
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=dama-to.20230601.gappssmtp.com
 header.i=@dama-to.20230601.gappssmtp.com header.a=rsa-sha256
 header.s=20230601 header.b=SPJtv7Aw
Subject: Re: [Intel-wired-lan] [PATCH iwl-next v2] ice: remove excessive
 memory allocation in ice_create_lag_recipe()
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
X-Spamd-Result: default: False [-0.71 / 15.00];
	R_SPF_ALLOW(-0.20)[+mx];
	R_DKIM_ALLOW(-0.20)[osuosl.org:s=default];
	MAILLIST(-0.20)[mailman];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[intel.com:email,smtp4.osuosl.org:helo,smtp4.osuosl.org:rdns,dama.to:email,osuosl.org:dkim];
	FORGED_RECIPIENTS(0.00)[m:aleksandr.loktionov@intel.com,m:anthony.l.nguyen@intel.com,m:netdev@vger.kernel.org,m:marcin.szycik@intel.com,s:lists@lfdr.de];
	DMARC_NA(0.00)[dama.to];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	FORGED_SENDER(0.00)[joe@dama.to,intel-wired-lan-bounces@osuosl.org];
	ARC_NA(0.00)[];
	FORWARDED(0.00)[intel-wired-lan@lists.osuosl.org];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	TO_DN_SOME(0.00)[];
	MIME_TRACE(0.00)[0:+];
	DKIM_TRACE(0.00)[osuosl.org:+];
	MISSING_XM_UA(0.00)[];
	RCPT_COUNT_FIVE(0.00)[5];
	FORGED_SENDER_FORWARDING(0.00)[];
	PREVIOUSLY_DELIVERED(0.00)[intel-wired-lan@lists.osuosl.org];
	FROM_NEQ_ENVFROM(0.00)[joe@dama.to,intel-wired-lan-bounces@osuosl.org];
	FROM_HAS_DN(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	TAGGED_RCPT(0.00)[intel-wired-lan];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	ASN(0.00)[asn:3701, ipnet:2605:bc80::/32, country:US];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	RCVD_COUNT_SEVEN(0.00)[9]
X-Rspamd-Queue-Id: 111E32FE845
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

On Mon, Mar 23, 2026 at 10:50:56AM +0100, Aleksandr Loktionov wrote:
> From: Marcin Szycik <marcin.szycik@intel.com>
> 
> For some reason ice_create_lag_recipe() allocates an array of 64
> struct ice_aqc_recipe_data_elem elements, while it only needs one (1).
> Fix it, while also using kzalloc_obj().
> 
> Signed-off-by: Marcin Szycik <marcin.szycik@intel.com>
> Signed-off-by: Aleksandr Loktionov <aleksandr.loktionov@intel.com>
> ---
> v1 -> v2 remove 'Fixes' from commit message because it's not a critical bug
> ---
>  drivers/net/ethernet/intel/ice/ice_lag.c | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)
> 
> diff --git a/drivers/net/ethernet/intel/ice/ice_lag.c b/drivers/net/ethernet/intel/ice/ice_lag.c
> index 310e8fe..70357dc 100644
> --- a/drivers/net/ethernet/intel/ice/ice_lag.c
> +++ b/drivers/net/ethernet/intel/ice/ice_lag.c
> @@ -2418,8 +2418,8 @@ static int ice_create_lag_recipe(struct ice_hw *hw, u16 *rid,
>  	if (err)
>  		return err;
>  
> -	new_rcp = kzalloc(ICE_RECIPE_LEN * ICE_MAX_NUM_RECIPES, GFP_KERNEL);
> +	new_rcp = kzalloc_obj(*new_rcp, GFP_KERNEL);
>  	if (!new_rcp)
>  		return -ENOMEM;
> 
>  	memcpy(new_rcp, base_recipe, ICE_RECIPE_LEN);

idk but should this memcpy be updated to sizeof(*new_rcp) to match the updated
allocation ? feels slightly easier to read (vs knowing that sizeof(*new_rcp)
== ICE_RECIPE_LEN).

either way:

Reviewed-by: Joe Damato <joe@dama.to>
