Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
	by mail.lfdr.de (Postfix) with ESMTPS id 43F50712930
	for <lists+intel-wired-lan@lfdr.de>; Fri, 26 May 2023 17:14:51 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 795974290C;
	Fri, 26 May 2023 15:14:47 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 795974290C
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1685114087;
	bh=fT869Qt+6O5cHXV//rLXbTHluTc+umkAA2AXag9s36s=;
	h=Date:To:References:From:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=y4YEy3gnq2ZRbndwKcMXMtmD9dxtLXD/dcMfSLMVS3hTd6rkUTinYiQfToKd9FTm4
	 k/S0qgS7xnxyKmrpwpCqv4YUNyssjA3bybHhbO2Tpo7ThjxSVXc+P0JYJGf1MmIYXz
	 OVMiGVi0TiKw9Xo4JoComtd3jIIw6gwfrS19ljS/9tDJIe+IWU+JvB9+mk/ozujaDy
	 Wa4beWFE3pA7EAyyw4pz4lwRvcihvHC1V+nnTa9w8bz0n0+EdjzPYH9oM9OUpphJKm
	 3ooOUvnfPhRs/bv/0/Xckw06xT/ZEgJg4OsksyrtqyJRKqXqGqKrVyY0cHn6mJxVrB
	 mRHzoCKF5F+ww==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id Xzo-rXTQ0HHP; Fri, 26 May 2023 15:14:46 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id 2713842754;
	Fri, 26 May 2023 15:14:46 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 2713842754
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 941BF1BF859
 for <intel-wired-lan@lists.osuosl.org>; Fri, 26 May 2023 09:48:23 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 6C8D640166
 for <intel-wired-lan@lists.osuosl.org>; Fri, 26 May 2023 09:48:23 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 6C8D640166
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 5hzblZyJ5GEP for <intel-wired-lan@lists.osuosl.org>;
 Fri, 26 May 2023 09:48:22 +0000 (UTC)
X-Greylist: whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org A22E7400D8
Received: from mail-ed1-x534.google.com (mail-ed1-x534.google.com
 [IPv6:2a00:1450:4864:20::534])
 by smtp2.osuosl.org (Postfix) with ESMTPS id A22E7400D8
 for <intel-wired-lan@lists.osuosl.org>; Fri, 26 May 2023 09:48:22 +0000 (UTC)
Received: by mail-ed1-x534.google.com with SMTP id
 4fb4d7f45d1cf-5147e40bbbbso255205a12.3
 for <intel-wired-lan@lists.osuosl.org>; Fri, 26 May 2023 02:48:22 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20221208; t=1685094501; x=1687686501;
 h=content-transfer-encoding:in-reply-to:from:references:cc:to
 :content-language:subject:user-agent:mime-version:date:message-id
 :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
 bh=RvBpCfcgBfq+TTHR4XXBywiR+cKDsO3EJnjHG46eiyI=;
 b=LCOm0tuCUwLKZjqEhVmuMp1pLkwOSug7+IZ24s+m+nrqF/JTx2bzkytzEDpBYMalG3
 Jj9i+1j8ln1+P6nuIJTXGIqzPQaMUTQ9Mm4/pahe33rjEaAjQvgs2T17KEqjDZCxss8y
 hBLoNgp9T5ecYkDUGYmxvuoinBevOCzQoo++LJ2tZxpnDsILdNil9pCEmua5BWFqgvJU
 hQSsdodud7NKbcT0FGlOcxttQb/wcKGohWPMuuo0nKy2yvA7h2HjcJjSPxrwhe4n9Cw1
 xRqB3dbFenPYuqDEr/I+S2aS/BjBjNDxKbuHHDHaiP4TdtLjvbSnE49hzZx9xmNlkAwI
 0REA==
X-Gm-Message-State: AC+VfDwStAI5buw5k5F4W7XwuSIkmoXkzPA2+VhHc89ml60vXbR2z/fv
 UemtSjODnhT+oeVwkarKWVo=
X-Google-Smtp-Source: ACHHUZ5484ZTFeoU13Z6zr8eadz/N4C4k1DEp9LNRPLgprzBk63f1yfx7F/tqm20ABBQs7tdt21BiQ==
X-Received: by 2002:aa7:cb50:0:b0:50c:358:1eba with SMTP id
 w16-20020aa7cb50000000b0050c03581ebamr808347edt.35.1685094500539; 
 Fri, 26 May 2023 02:48:20 -0700 (PDT)
Received: from [192.168.0.107] ([77.124.85.177])
 by smtp.gmail.com with ESMTPSA id
 d8-20020a50fb08000000b00502689a06b2sm1367218edq.91.2023.05.26.02.48.18
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Fri, 26 May 2023 02:48:20 -0700 (PDT)
Message-ID: <e1e3dea5-a393-180a-805a-a944ec778041@gmail.com>
Date: Fri, 26 May 2023 12:48:15 +0300
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:102.0) Gecko/20100101
 Thunderbird/102.11.0
Content-Language: en-US
To: Simon Horman <horms@kernel.org>,
 Jesse Brandeburg <jesse.brandeburg@intel.com>,
 Tony Nguyen <anthony.l.nguyen@intel.com>
References: <20230525-null-ice-v1-1-30d10557b91e@kernel.org>
From: Tariq Toukan <ttoukan.linux@gmail.com>
In-Reply-To: <20230525-null-ice-v1-1-30d10557b91e@kernel.org>
X-Mailman-Approved-At: Fri, 26 May 2023 15:14:40 +0000
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=gmail.com; s=20221208; t=1685094501; x=1687686501;
 h=content-transfer-encoding:in-reply-to:from:references:cc:to
 :content-language:subject:user-agent:mime-version:date:message-id
 :from:to:cc:subject:date:message-id:reply-to;
 bh=RvBpCfcgBfq+TTHR4XXBywiR+cKDsO3EJnjHG46eiyI=;
 b=TChFGd7Y1k6dSQ6LFy1/fB482Lf7c+I3XtPjqRvs1ibBWeyN1xWAzQR8IyEKPXcSbw
 9xlqRWxOaIiia8xxZEG/VXqkThynX5agnxJfT3shAoAPTTZT0R1QINfHkrwdASQEzjIX
 4NxQSmZPmcYC6ZyR3PqYwVP8bdXJTaP2tFDb4Ez4CY9473l+Nzg9Zjjm6U1PgDxF2zzw
 sPW93TsfouXxomu4yFoEumPzSy6I1q/A+BUvPfUGvbmSitZKaRHOJqlZqMF0QV/zOLud
 6vupxqFqHXn87zDyt4AHE5hseZCWf+BYn98mcVijxPsflgouhKUA0xQjR61yX/WkpiuT
 ME/A==
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com
 header.a=rsa-sha256 header.s=20221208 header.b=TChFGd7Y
Subject: Re: [Intel-wired-lan] [PATCH net] ice: Don't dereference NULL in
 ice_gns_read error path
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
Cc: Sudhansu Sekhar Mishra <sudhansu.mishra@intel.com>,
 Karol Kolacinski <karol.kolacinski@intel.com>, linux-kernel@vger.kernel.org,
 Eric Dumazet <edumazet@google.com>, intel-wired-lan@lists.osuosl.org,
 netdev@vger.kernel.org, Jakub Kicinski <kuba@kernel.org>,
 Paolo Abeni <pabeni@redhat.com>, "David S. Miller" <davem@davemloft.net>,
 Dan Carpenter <dan.carpenter@linaro.org>
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>



On 25/05/2023 13:52, Simon Horman wrote:
> If pf is NULL in ice_gns_read() then it will be dereferenced
> in the error path by a call to dev_dbg(ice_pf_to_dev(pf), ...).
> 
> Avoid this by simply returning in this case.
> If logging is desired an alternate approach might be to
> use pr_err() before returning.
> 
> Flagged by Smatch as:
> 
>    .../ice_gnss.c:196 ice_gnss_read() error: we previously assumed 'pf' could be null (see line 131)
> 
> Fixes: 43113ff73453 ("ice: add TTY for GNSS module for E810T device")
> Signed-off-by: Simon Horman <horms@kernel.org>
> ---

LGTM.


Reviewed-by: Tariq Toukan <tariqt@nvidia.com>
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
