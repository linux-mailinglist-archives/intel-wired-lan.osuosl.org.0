Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 27A0CB581B0
	for <lists+intel-wired-lan@lfdr.de>; Mon, 15 Sep 2025 18:11:01 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 63DEE60725;
	Mon, 15 Sep 2025 16:10:59 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id HEgqqckyPB2z; Mon, 15 Sep 2025 16:10:59 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org E771860729
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1757952659;
	bh=uuoUKEJ54WCokBwecB679oiTZdyaVBTsIQZss3Tmj7k=;
	h=Date:To:Cc:References:From:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=5HJtpBrZPmATF2wwzUwf/PGXYVczgF1HfJNDo4G9v/37qnbmuUXYNWMZ4rxpBM2kU
	 O1QCjX4pgaXcMh5sBvIU+w0xQes/3bEdLWU9YaB8bH50ZS5mgtGi621F2a+F88r8He
	 O5KEGmDYbnoIBDHwS2OUTUrh9bHFFJ8tZlNF9ewennATz3cHdBWGGT9iLyLUelWPV9
	 YpM9fJcajIfx/bVIoPk3FHJ6LyavUnX/+H/Ela3/mhu5yF+CfrG2k4MrfG3neKwEfa
	 WVSkCbZRJJmrMxdxDaKqtRPsn5C53XjmmI4dysAfs6lM2NupI5SnyYtb2auTB1NoYv
	 pMmebYVMZLCig==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp3.osuosl.org (Postfix) with ESMTP id E771860729;
	Mon, 15 Sep 2025 16:10:58 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by lists1.osuosl.org (Postfix) with ESMTP id AF1B012D
 for <intel-wired-lan@lists.osuosl.org>; Mon, 15 Sep 2025 16:10:57 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 995CA4008C
 for <intel-wired-lan@lists.osuosl.org>; Mon, 15 Sep 2025 16:10:57 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id J_GNaKlXao7A for <intel-wired-lan@lists.osuosl.org>;
 Mon, 15 Sep 2025 16:10:56 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=141.14.17.11;
 helo=mx3.molgen.mpg.de; envelope-from=pmenzel@molgen.mpg.de;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp2.osuosl.org 2A9F040052
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 2A9F040052
Received: from mx3.molgen.mpg.de (mx3.molgen.mpg.de [141.14.17.11])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 2A9F040052
 for <intel-wired-lan@lists.osuosl.org>; Mon, 15 Sep 2025 16:10:55 +0000 (UTC)
Received: from [141.14.220.42] (g42.guest.molgen.mpg.de [141.14.220.42])
 (using TLSv1.3 with cipher TLS_AES_128_GCM_SHA256 (128/128 bits)
 key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
 (No client certificate requested) (Authenticated sender: pmenzel)
 by mx.molgen.mpg.de (Postfix) with ESMTPSA id 8955A60288274;
 Mon, 15 Sep 2025 18:10:42 +0200 (CEST)
Message-ID: <89e50ff2-5382-4d5e-a121-167704ef5b1a@molgen.mpg.de>
Date: Mon, 15 Sep 2025 18:10:42 +0200
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
To: Anton Nadezhdin <anton.nadezhdin@intel.com>
Cc: intel-wired-lan@lists.osuosl.org, netdev@vger.kernel.org,
 anthony.l.nguyen@intel.com, richardcochran@gmail.com,
 Milena Olech <milena.olech@intel.com>,
 Aleksandr Loktionov <aleksandr.loktionov@intel.com>
References: <20250829175734.175963-1-anton.nadezhdin@intel.com>
Content-Language: en-US
From: Paul Menzel <pmenzel@molgen.mpg.de>
In-Reply-To: <20250829175734.175963-1-anton.nadezhdin@intel.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 8bit
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dmarc=none (p=none dis=none)
 header.from=molgen.mpg.de
Subject: Re: [Intel-wired-lan] [PATCH iwl-next v3] idpf: add HW timestamping
 statistics
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

Dear Anton,


Thank you for the improved patch.

Am 29.08.25 um 19:57 schrieb Anton Nadezhdin:
> From: Milena Olech <milena.olech@intel.com>
> 
> Add HW timestamping statistics support - through implementing get_ts_stats.
> Timestamp statistics include correctly timestamped packets, discarded,
> skipped and flushed during PTP release.
> 
> Most of the stats are collected per vport, only requests skipped due to
> lack of free latch index are collected per Tx queue.
> 
> Statistics can be obtained using kernel ethtool since version 6.10
> with:
> ethtool -I -T <interface>
> 
> The output will include:
> Statistics:
>    tx_pkts: 15
>    tx_lost: 0
>    tx_err: 0
> 
> Signed-off-by: Milena Olech <milena.olech@intel.com>
> Co-developed-by: Anton Nadezhdin <anton.nadezhdin@intel.com>
> Signed-off-by: Anton Nadezhdin <anton.nadezhdin@intel.com>
> Reviewed-by: Aleksandr Loktionov <aleksandr.loktionov@intel.com>
> ---
> Changelog:
> v2: Add testing information
> v3: Add check for port status to resolve driver crash during statistic
>    read when port is down
> ---
>   drivers/net/ethernet/intel/idpf/idpf.h        | 17 ++++++
>   .../net/ethernet/intel/idpf/idpf_ethtool.c    | 56 +++++++++++++++++++
>   drivers/net/ethernet/intel/idpf/idpf_ptp.c    | 11 +++-
>   .../ethernet/intel/idpf/idpf_virtchnl_ptp.c   |  4 ++
>   4 files changed, 87 insertions(+), 1 deletion(-)

[…]

Reviewed-by: Paul Menzel <pmenzel@molgen.mpg.de>


Kind regards,

Paul
