Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id BB9668A9DFA
	for <lists+intel-wired-lan@lfdr.de>; Thu, 18 Apr 2024 17:07:39 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 5B71C409B3;
	Thu, 18 Apr 2024 15:07:38 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id 7OX-h8AcvvKN; Thu, 18 Apr 2024 15:07:37 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.34; helo=ash.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org AD951408EE
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1713452855;
	bh=1qz6R1nWTZ26oO9siRBDnxACVIX3piGFMlSNju3MhRg=;
	h=Date:To:References:From:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=Nu0zLJAXo9l9idNex2+da4KQ9e1SEMaCspGYchGB+v/Y3dUzE8+9L3vAQOQETTUk7
	 lhYaiJbydqkM+5Y9frm5961l4Izb4WoL7L+7xuLXLnbamgdttLSUNJpF50QS9sX1CI
	 sd8V6d/y4MRWs0Z45O3hpeF6HaORmBE0DgOx+FRTXFP3V1iFdu6kaWraJmT9TBvil0
	 mT2DfaxHsnGRVM87vc/8RQeStPZ8nWNFwDnGKcSlJ0T5jKWeOErYoDrjzmej0l/gtF
	 jadX0asn51os6HuzjPqZb/+yEnsLLfXTbN26kXciKEzMseMH2BClKiKqA42g7Vn2kD
	 PkuY7h0T4pHDw==
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id AD951408EE;
	Thu, 18 Apr 2024 15:07:35 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 4D6711BF3CA
 for <intel-wired-lan@lists.osuosl.org>; Thu, 18 Apr 2024 15:07:34 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 38E4740542
 for <intel-wired-lan@lists.osuosl.org>; Thu, 18 Apr 2024 15:07:34 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id A3pMiA4zJ9Qu for <intel-wired-lan@lists.osuosl.org>;
 Thu, 18 Apr 2024 15:07:29 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=141.14.17.11;
 helo=mx3.molgen.mpg.de; envelope-from=pmenzel@molgen.mpg.de;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp2.osuosl.org 8C0AF40160
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 8C0AF40160
Received: from mx3.molgen.mpg.de (mx3.molgen.mpg.de [141.14.17.11])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 8C0AF40160
 for <intel-wired-lan@lists.osuosl.org>; Thu, 18 Apr 2024 15:07:27 +0000 (UTC)
Received: from [141.14.220.34] (g34.guest.molgen.mpg.de [141.14.220.34])
 (using TLSv1.3 with cipher TLS_AES_128_GCM_SHA256 (128/128 bits)
 key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
 (No client certificate requested) (Authenticated sender: pmenzel)
 by mx.molgen.mpg.de (Postfix) with ESMTPSA id EBBC361E5FE06;
 Thu, 18 Apr 2024 17:07:08 +0200 (CEST)
Message-ID: <21507396-3615-41e3-b8dd-5fbac046d5b0@molgen.mpg.de>
Date: Thu, 18 Apr 2024 17:07:08 +0200
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
To: Sergey Temerkhanov <sergey.temerkhanov@intel.com>
References: <20240418110318.67202-1-sergey.temerkhanov@intel.com>
Content-Language: en-US
From: Paul Menzel <pmenzel@molgen.mpg.de>
In-Reply-To: <20240418110318.67202-1-sergey.temerkhanov@intel.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 8bit
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dmarc=none (p=none dis=none)
 header.from=molgen.mpg.de
Subject: Re: [Intel-wired-lan] [PATCH iwl-next] ice: Extend auxbus device
 naming
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
Cc: netdev@vger.kernel.org, intel-wired-lan@lists.osuosl.org,
 Przemek Kitszel <przemyslaw.kitszel@intel.com>
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

Dear Sergey,


Thank you for your patch.

Am 18.04.24 um 13:03 schrieb Sergey Temerkhanov:
> Include segment/domain number in the device name to distinguish
> between PCI devices located on different root complexes in
> multi-segment configurations

Can you please paste the old and new name in the commit message?

> Signed-off-by: Sergey Temerkhanov <sergey.temerkhanov@intel.com>
> Reviewed-by: Przemek Kitszel <przemyslaw.kitszel@intel.com>
> ---
>   drivers/net/ethernet/intel/ice/ice_ptp.c | 12 ++++++++----
>   1 file changed, 8 insertions(+), 4 deletions(-)

[…]


Kind regards,

Paul
