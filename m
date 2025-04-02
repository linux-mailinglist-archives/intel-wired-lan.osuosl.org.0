Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 84DCDA78CA2
	for <lists+intel-wired-lan@lfdr.de>; Wed,  2 Apr 2025 12:47:12 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 084CE610BD;
	Wed,  2 Apr 2025 10:47:11 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id YBaKsyY6Y26g; Wed,  2 Apr 2025 10:47:10 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 705AC60ADB
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1743590830;
	bh=ypu8JjwQ7LGF38JD3wHnehscjaJly8YMFDiK1em5sIw=;
	h=Date:From:To:Cc:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=ZPdvIWX8Twawo7F5UC4jwg8kjV6wTaBBVdyDQJX6FX69CMCyus6JCyEk31a8tn7vz
	 J6YOMthh4awmPKxkxu5MpmiBTRUJJi66DHj+zLlTT5QZCiKj9Fqam/Yk1Bmgu11FKz
	 ndt6sJLP/dtnNWMS/GU/J3HY14+JHuxbMKgAYk03ukRxW1qFsbPdI3j0/uu0eHE3r4
	 6iD5lN5oSHj7kZZ9eBL6g39neXTY5lkf+2CX6h0b7yFkCbVS8KNKO1WK8PZCC857ua
	 gKuaGRvpSwm7xTzqdGZymPSOHv7/NBTtVAFns/w5PuXTRdmxxyR5S2OrJ6iJKwXF8/
	 oJMzoAnKbHRag==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp3.osuosl.org (Postfix) with ESMTP id 705AC60ADB;
	Wed,  2 Apr 2025 10:47:10 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
 by lists1.osuosl.org (Postfix) with ESMTP id F0961117
 for <intel-wired-lan@lists.osuosl.org>; Wed,  2 Apr 2025 10:47:08 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id E2208838B2
 for <intel-wired-lan@lists.osuosl.org>; Wed,  2 Apr 2025 10:47:08 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id p3T37cnQWUxX for <intel-wired-lan@lists.osuosl.org>;
 Wed,  2 Apr 2025 10:47:08 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=170.10.133.124;
 helo=us-smtp-delivery-124.mimecast.com; envelope-from=vinschen@redhat.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp1.osuosl.org 2C88383704
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 2C88383704
Received: from us-smtp-delivery-124.mimecast.com
 (us-smtp-delivery-124.mimecast.com [170.10.133.124])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 2C88383704
 for <intel-wired-lan@lists.osuosl.org>; Wed,  2 Apr 2025 10:47:08 +0000 (UTC)
Received: from mx-prod-mc-08.mail-002.prod.us-west-2.aws.redhat.com
 (ec2-35-165-154-97.us-west-2.compute.amazonaws.com [35.165.154.97]) by
 relay.mimecast.com with ESMTP with STARTTLS (version=TLSv1.3,
 cipher=TLS_AES_256_GCM_SHA384) id us-mta-518-TKmhR-jAPDK1jkstwgn0Ag-1; Wed,
 02 Apr 2025 06:47:01 -0400
X-MC-Unique: TKmhR-jAPDK1jkstwgn0Ag-1
X-Mimecast-MFC-AGG-ID: TKmhR-jAPDK1jkstwgn0Ag_1743590820
Received: from mx-prod-int-03.mail-002.prod.us-west-2.aws.redhat.com
 (mx-prod-int-03.mail-002.prod.us-west-2.aws.redhat.com [10.30.177.12])
 (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
 key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
 (No client certificate requested)
 by mx-prod-mc-08.mail-002.prod.us-west-2.aws.redhat.com (Postfix) with ESMTPS
 id 2B5531801A12; Wed,  2 Apr 2025 10:46:59 +0000 (UTC)
Received: from calimero.vinschen.de (unknown [10.22.80.96])
 by mx-prod-int-03.mail-002.prod.us-west-2.aws.redhat.com (Postfix) with ESMTPS
 id B457319560AD; Wed,  2 Apr 2025 10:46:58 +0000 (UTC)
Received: by calimero.vinschen.de (Postfix, from userid 500)
 id 48D59A8098D; Wed, 02 Apr 2025 12:46:56 +0200 (CEST)
Date: Wed, 2 Apr 2025 12:46:56 +0200
From: Corinna Vinschen <vinschen@redhat.com>
To: Jacob Keller <jacob.e.keller@intel.com>
Cc: Anthony Nguyen <anthony.l.nguyen@intel.com>, david.zage@intel.com,
 vinicius.gomes@intel.com, rodrigo.cadore@l-acoustics.com,
 intel-wired-lan@lists.osuosl.org, netdev@vger.kernel.org,
 Christopher S M Hall <christopher.s.hall@intel.com>,
 Michal Swiatkowski <michal.swiatkowski@linux.intel.com>,
 Mor Bar-Gabay <morx.bar.gabay@intel.com>,
 Avigail Dahan <avigailx.dahan@intel.com>
Message-ID: <Z-0VoDTYP9HsSrsJ@calimero.vinschen.de>
Mail-Followup-To: Jacob Keller <jacob.e.keller@intel.com>,
 Anthony Nguyen <anthony.l.nguyen@intel.com>, david.zage@intel.com,
 vinicius.gomes@intel.com, rodrigo.cadore@l-acoustics.com,
 intel-wired-lan@lists.osuosl.org, netdev@vger.kernel.org,
 Christopher S M Hall <christopher.s.hall@intel.com>,
 Michal Swiatkowski <michal.swiatkowski@linux.intel.com>,
 Mor Bar-Gabay <morx.bar.gabay@intel.com>,
 Avigail Dahan <avigailx.dahan@intel.com>
References: <20250401-jk-igc-ptm-fixes-v4-v4-0-c0efb82bbf85@intel.com>
 <20250401-jk-igc-ptm-fixes-v4-v4-1-c0efb82bbf85@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
In-Reply-To: <20250401-jk-igc-ptm-fixes-v4-v4-1-c0efb82bbf85@intel.com>
X-Scanned-By: MIMEDefang 3.0 on 10.30.177.12
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=redhat.com; 
 s=mimecast20190719; t=1743590827;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 in-reply-to:in-reply-to:references:references;
 bh=ypu8JjwQ7LGF38JD3wHnehscjaJly8YMFDiK1em5sIw=;
 b=doZ/qZhGWO943JZa+WOkBMcMCIyVxO/+GhGxSI3CVTfcRf7qK14cALp4N2UcxwHIIattOa
 h5t6cn7yuFI8ZnIaCIPJxvR3wMdP8VryYL/nD87EY6KY6cdiVlE/wQhwabYJ2nHsHLatwx
 FPMBLU9qhyp3j3Ogo7S+em0YM9uFtFE=
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dmarc=pass (p=quarantine dis=none)
 header.from=redhat.com
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (1024-bit key) header.d=redhat.com header.i=@redhat.com
 header.a=rsa-sha256 header.s=mimecast20190719 header.b=doZ/qZhG
Subject: Re: [Intel-wired-lan] [PATCH iwl-net v4 1/6] igc: fix PTM cycle
 trigger logic
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

On Apr  1 16:35, Jacob Keller wrote:
> From: Christopher S M Hall <christopher.s.hall@intel.com>
> 
> Writing to clear the PTM status 'valid' bit while the PTM cycle is
> triggered results in unreliable PTM operation. To fix this, clear the
> PTM 'trigger' and status after each PTM transaction.
> 
> The issue can be reproduced with the following:
> 
> $ sudo phc2sys -R 1000 -O 0 -i tsn0 -m
> 
> Note: 1000 Hz (-R 1000) is unrealistically large, but provides a way to
> quickly reproduce the issue.
> 
> PHC2SYS exits with:
> 
> "ioctl PTP_OFFSET_PRECISE: Connection timed out" when the PTM transaction
>   fails
> 
> This patch also fixes a hang in igc_probe() when loading the igc
> driver in the kdump kernel on systems supporting PTM.
> 
> The igc driver running in the base kernel enables PTM trigger in
> igc_probe().  Therefore the driver is always in PTM trigger mode,
> except in brief periods when manually triggering a PTM cycle.
> 
> When a crash occurs, the NIC is reset while PTM trigger is enabled.
> Due to a hardware problem, the NIC is subsequently in a bad busmaster
> state and doesn't handle register reads/writes.  When running
> igc_probe() in the kdump kernel, the first register access to a NIC
> register hangs driver probing and ultimately breaks kdump.
> 
> With this patch, igc has PTM trigger disabled most of the time,
> and the trigger is only enabled for very brief (10 - 100 us) periods
> when manually triggering a PTM cycle.  Chances that a crash occurs
> during a PTM trigger are not 0, but extremly reduced.
> 
> Fixes: a90ec8483732 ("igc: Add support for PTP getcrosststamp()")
> Reviewed-by: Michal Swiatkowski <michal.swiatkowski@linux.intel.com>
> Tested-by: Mor Bar-Gabay <morx.bar.gabay@intel.com>
> Tested-by: Avigail Dahan <avigailx.dahan@intel.com>
> Signed-off-by: Christopher S M Hall <christopher.s.hall@intel.com>
> Reviewed-by: Corinna Vinschen <vinschen@redhat.com>
> Signed-off-by: Jacob Keller <jacob.e.keller@intel.com>

Tested-by: Corinna Vinschen <vinschen@redhat.com>

