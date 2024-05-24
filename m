Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 896D68CEAF7
	for <lists+intel-wired-lan@lfdr.de>; Fri, 24 May 2024 22:43:49 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id CDBC280E62;
	Fri, 24 May 2024 20:43:47 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id pCkhInoiSy1Y; Fri, 24 May 2024 20:43:47 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.34; helo=ash.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 0CD2D80D41
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1716583427;
	bh=15N/xS+H4siig6BCvvwm2jZ6/Oo7wlwtUPvsJ/tzFz8=;
	h=Date:To:References:From:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=ns1gaSmyuTnG8l9E1hFYaCPPExJ7T2irmzqFwI58dITHf19MbtdZ2q345OezWV4k/
	 Omyg29nhvarkWFvpkgljyjYfC8Njj9SkwgcmT9c/B1lumX1bcusd9KaL88xKvGAoSC
	 D9My9Jop+O0RE8dydStoFmsL9LAAWCAT3d+5Hisx730vAo5ICQqApDQOA5+ahURSbG
	 1Fd+fiALpAeTtbOT6XXIm1xOLn4K2/6bA3t8cVmzn+VSRZUtZZI6Xv+LY6M2ngBOrA
	 r60ByLNz5PX5jvXMCkZNTCx/KSXS5MTKDniMuxndGsdtQ73u1VQF0DBBE+poLHS0rm
	 gnDS+sAUnCyPg==
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id 0CD2D80D41;
	Fri, 24 May 2024 20:43:47 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 4D6481CFDEC
 for <intel-wired-lan@lists.osuosl.org>; Fri, 24 May 2024 20:43:45 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 38266404D3
 for <intel-wired-lan@lists.osuosl.org>; Fri, 24 May 2024 20:43:45 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id rrhjBThkOqW7 for <intel-wired-lan@lists.osuosl.org>;
 Fri, 24 May 2024 20:43:44 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=141.14.17.11;
 helo=mx3.molgen.mpg.de; envelope-from=pmenzel@molgen.mpg.de;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp2.osuosl.org 067D940447
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 067D940447
Received: from mx3.molgen.mpg.de (mx3.molgen.mpg.de [141.14.17.11])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 067D940447
 for <intel-wired-lan@lists.osuosl.org>; Fri, 24 May 2024 20:43:42 +0000 (UTC)
Received: from [192.168.0.3] (ip5f5af1fe.dynamic.kabel-deutschland.de
 [95.90.241.254])
 (using TLSv1.3 with cipher TLS_AES_128_GCM_SHA256 (128/128 bits)
 key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
 (No client certificate requested) (Authenticated sender: pmenzel)
 by mx.molgen.mpg.de (Postfix) with ESMTPSA id 5A82861E646D0;
 Fri, 24 May 2024 22:43:12 +0200 (CEST)
Message-ID: <de98ffb7-91fa-4629-8429-8699c9ddea87@molgen.mpg.de>
Date: Fri, 24 May 2024 22:43:11 +0200
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
To: Anil Samal <anil.samal@intel.com>
References: <20240524135255.3607422-1-anil.samal@intel.com>
 <20240524135255.3607422-2-anil.samal@intel.com>
Content-Language: en-US
From: Paul Menzel <pmenzel@molgen.mpg.de>
In-Reply-To: <20240524135255.3607422-2-anil.samal@intel.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 8bit
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dmarc=none (p=none dis=none)
 header.from=molgen.mpg.de
Subject: Re: [Intel-wired-lan] [PATCH iwl-next v3 1/3] ice: Extend Sideband
 Queue command to support flags
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
Cc: netdev@vger.kernel.org, lukasz.czapnik@intel.com, leszek.pepiak@intel.com,
 anthony.l.nguyen@intel.com, Simon Horman <horms@kernel.org>,
 przemyslaw.kitszel@intel.com, jacob.e.keller@intel.com,
 intel-wired-lan@lists.osuosl.org
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

Dear Anil,


Thank you for your patch.

Am 24.05.24 um 15:51 schrieb Anil Samal:
>      Current driver implementation for Sideband Queue supports a
>      fixed flag (ICE_AQ_FLAG_RD). To retrieve FEC statistics from
>      firmware, Sideband Queue command is used with a different flag.
> 
>      Extend API for Sideband Queue command to use 'flags' as input
>      argument.

Please use `git format-patch`, and not `git show` to send patches. At 
least that is what I assume the unwanted indentation comes from.

[…]


Kind regards,

Paul
