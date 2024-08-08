Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 88AC194C049
	for <lists+intel-wired-lan@lfdr.de>; Thu,  8 Aug 2024 16:54:41 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 3D84D40AB9;
	Thu,  8 Aug 2024 14:54:40 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id sEQVCPpkbJvi; Thu,  8 Aug 2024 14:54:39 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.34; helo=ash.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 4F76B409B4
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1723128879;
	bh=E6VQurNupLMkE5+xs4FU6tjwM3iI7P4QQzeCwz5WnMw=;
	h=Date:From:To:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=VHiqemBN4tN7uZjPRdev+E9E+KtkBo0JqTg3wSVd9D4SIzGdHQhZIQxQ3ftFUwfai
	 ZiQAwAP2IekO9ho4n9Mp48DTEFP1yFfxwsDvO629sfUhhrCZWzQflhDs1TKrPhP2oT
	 zc7M4OLr3Fit1DRqCeYFpKZfcsSuVpY3oxPiP7eVujOqhbesrxppC6ArBXTfvl4vKo
	 SiNcNTU7l8dHszjKUkeX8qdlh0UkkJzbf7fj3LQYtRBpZ+RWj5alAZdxb7DAYV8dfp
	 EGT+8N/kMAXyfLyhBNyTEB//BbM0oLQAdPeKEAquYwkFnMGZDiPpk+fnLMCAITUFD1
	 BJv9Kfn6KC1DA==
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id 4F76B409B4;
	Thu,  8 Aug 2024 14:54:39 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 7120B1BF2B4
 for <intel-wired-lan@lists.osuosl.org>; Thu,  8 Aug 2024 14:54:37 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 6B5644099F
 for <intel-wired-lan@lists.osuosl.org>; Thu,  8 Aug 2024 14:54:37 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id reaDW0bX-v00 for <intel-wired-lan@lists.osuosl.org>;
 Thu,  8 Aug 2024 14:54:36 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=170.10.129.124;
 helo=us-smtp-delivery-124.mimecast.com; envelope-from=vinschen@redhat.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp4.osuosl.org 630A84099D
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 630A84099D
Received: from us-smtp-delivery-124.mimecast.com
 (us-smtp-delivery-124.mimecast.com [170.10.129.124])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 630A84099D
 for <intel-wired-lan@lists.osuosl.org>; Thu,  8 Aug 2024 14:54:36 +0000 (UTC)
Received: from mx-prod-mc-05.mail-002.prod.us-west-2.aws.redhat.com
 (ec2-54-186-198-63.us-west-2.compute.amazonaws.com [54.186.198.63]) by
 relay.mimecast.com with ESMTP with STARTTLS (version=TLSv1.3,
 cipher=TLS_AES_256_GCM_SHA384) id us-mta-659-J9hXCqd8Mf-C-AzaqRQL-g-1; Thu,
 08 Aug 2024 10:54:33 -0400
X-MC-Unique: J9hXCqd8Mf-C-AzaqRQL-g-1
Received: from mx-prod-int-05.mail-002.prod.us-west-2.aws.redhat.com
 (mx-prod-int-05.mail-002.prod.us-west-2.aws.redhat.com [10.30.177.17])
 (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
 key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
 (No client certificate requested)
 by mx-prod-mc-05.mail-002.prod.us-west-2.aws.redhat.com (Postfix) with ESMTPS
 id 6E06D1955F43; Thu,  8 Aug 2024 14:54:32 +0000 (UTC)
Received: from calimero.vinschen.de (unknown [10.39.192.194])
 by mx-prod-int-05.mail-002.prod.us-west-2.aws.redhat.com (Postfix) with ESMTPS
 id A6CED19560A3; Thu,  8 Aug 2024 14:54:30 +0000 (UTC)
Received: by calimero.vinschen.de (Postfix, from userid 500)
 id 310F0A80E94; Thu,  8 Aug 2024 16:54:28 +0200 (CEST)
Date: Thu, 8 Aug 2024 16:54:28 +0200
From: Corinna Vinschen <vinschen@redhat.com>
To: christopher.s.hall@intel.com
Message-ID: <ZrTcJGAMBBT2kClQ@calimero.vinschen.de>
Mail-Followup-To: christopher.s.hall@intel.com,
 intel-wired-lan@lists.osuosl.org, david.zage@intel.com,
 vinicius.gomes@intel.com, netdev@vger.kernel.org,
 rodrigo.cadore@l-acoustics.com
References: <20240807003032.10300-1-christopher.s.hall@intel.com>
 <20240807003032.10300-4-christopher.s.hall@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
In-Reply-To: <20240807003032.10300-4-christopher.s.hall@intel.com>
X-Scanned-By: MIMEDefang 3.0 on 10.30.177.17
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=redhat.com; 
 s=mimecast20190719; t=1723128875;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 in-reply-to:in-reply-to:references:references;
 bh=E6VQurNupLMkE5+xs4FU6tjwM3iI7P4QQzeCwz5WnMw=;
 b=Gc1NSnZF9QoF9ZukRM6PZP0xfIb9l5BCswG5D7vtfUBnXYtnUx+r4et3Ls0pPA0vi+u7m4
 hWAfysUcADQVzn9RXk+7YsNQ6RA8+OzojXXASXgGvct8d7JBvqapaym4/mLmvqfBYAwFxP
 SPHyHAO7zu6Q7sD1s3YPDxi8FTvnLXE=
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=redhat.com
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (1024-bit key,
 unprotected) header.d=redhat.com header.i=@redhat.com header.a=rsa-sha256
 header.s=mimecast20190719 header.b=Gc1NSnZF
Subject: Re: [Intel-wired-lan] [PATCH iwl-net v1 3/5] igc: Move ktime
 snapshot into PTM retry loop
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
Cc: vinicius.gomes@intel.com, netdev@vger.kernel.org, david.zage@intel.com,
 rodrigo.cadore@l-acoustics.com, intel-wired-lan@lists.osuosl.org
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

On Aug  6 17:30, christopher.s.hall@intel.com wrote:
> From: Christopher S M Hall <christopher.s.hall@intel.com>
> 
> Move ktime_get_snapshot() into the loop. If a retry does occur, a more
> recent snapshot will result in a more accurate cross-timestamp.
> 
> Fixes: a90ec8483732 ("igc: Add support for PTP getcrosststamp()")
> Signed-off-by: Christopher S M Hall <christopher.s.hall@intel.com>
> ---
>  drivers/net/ethernet/intel/igc/igc_ptp.c | 18 +++++++++---------
>  1 file changed, 9 insertions(+), 9 deletions(-)
> 
> diff --git a/drivers/net/ethernet/intel/igc/igc_ptp.c b/drivers/net/ethernet/intel/igc/igc_ptp.c
> index 00cc80d8d164..fb885fcaa97c 100644
> --- a/drivers/net/ethernet/intel/igc/igc_ptp.c
> +++ b/drivers/net/ethernet/intel/igc/igc_ptp.c
> @@ -1011,16 +1011,16 @@ static int igc_phc_get_syncdevicetime(ktime_t *device,
>  	int err, count = 100;
>  	ktime_t t1, t2_curr;
>  
> -	/* Get a snapshot of system clocks to use as historic value. */
> -	ktime_get_snapshot(&adapter->snapshot);
> -
> +	/* Doing this in a loop because in the event of a
> +	 * badly timed (ha!) system clock adjustment, we may
> +	 * get PTM errors from the PCI root, but these errors
> +	 * are transitory. Repeating the process returns valid
> +	 * data eventually.
> +	 */
>  	do {
> -		/* Doing this in a loop because in the event of a
> -		 * badly timed (ha!) system clock adjustment, we may
> -		 * get PTM errors from the PCI root, but these errors
> -		 * are transitory. Repeating the process returns valid
> -		 * data eventually.
> -		 */
> +		/* Get a snapshot of system clocks to use as historic value. */
> +		ktime_get_snapshot(&adapter->snapshot);
> +
>  		igc_ptm_trigger(hw);
>  
>  		err = readx_poll_timeout(rd32, IGC_PTM_STAT, stat,
> -- 
> 2.34.1

Reviewed-by: Corinna Vinschen <vinschen@redhat.com>

