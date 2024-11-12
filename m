Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 668369C5C12
	for <lists+intel-wired-lan@lfdr.de>; Tue, 12 Nov 2024 16:40:01 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 4461840324;
	Tue, 12 Nov 2024 15:39:59 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id 6kd7iWCjDTFP; Tue, 12 Nov 2024 15:39:56 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 803B94031B
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1731425996;
	bh=COWxCBk/xn+lK69v98IsMcjt5CTY0uE+IGQAJjbnHp0=;
	h=Date:From:To:Cc:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=2qMTvIlapCzf/lmnVYLVUnrlNFhBbtbzwLTqI8i9Oa7ovokP+bM2DK/6+CiihAI/N
	 35rB8/7KfjlR69CA2NB5HE9iBfvVr2JFLKdHypM9LCzQthX3DfYCcRR7HBdHgwzAVI
	 2p9hRcVUxbNB8eRmb10SgA1oTJwnm1P4YbIne9PJQEHeXX3WpdBiAYEYxiuIjXKiCh
	 wQ1dHhRZajdHKQpjy+0K1S6V+uk9PToHcB9AAUZW3LuM00mEhj9kfCTnBafRzgwxo7
	 86oBaGj9j9DEdb1KvaSJPnrlIn/gL9Fatg0aQiRMTWh3jl/ivE0E3SbdlP9bLm7iPb
	 lSVxVtw+FF3nQ==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp4.osuosl.org (Postfix) with ESMTP id 803B94031B;
	Tue, 12 Nov 2024 15:39:56 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [IPv6:2605:bc80:3010::133])
 by lists1.osuosl.org (Postfix) with ESMTP id 01441DB1
 for <intel-wired-lan@lists.osuosl.org>; Tue, 12 Nov 2024 15:39:54 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id DDB91400C1
 for <intel-wired-lan@lists.osuosl.org>; Tue, 12 Nov 2024 15:39:54 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id rtTj43-Kdn-n for <intel-wired-lan@lists.osuosl.org>;
 Tue, 12 Nov 2024 15:39:54 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=170.10.129.124;
 helo=us-smtp-delivery-124.mimecast.com; envelope-from=vinschen@redhat.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp2.osuosl.org DB9C44012F
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org DB9C44012F
Received: from us-smtp-delivery-124.mimecast.com
 (us-smtp-delivery-124.mimecast.com [170.10.129.124])
 by smtp2.osuosl.org (Postfix) with ESMTPS id DB9C44012F
 for <intel-wired-lan@lists.osuosl.org>; Tue, 12 Nov 2024 15:39:53 +0000 (UTC)
Received: from mx-prod-mc-02.mail-002.prod.us-west-2.aws.redhat.com
 (ec2-54-186-198-63.us-west-2.compute.amazonaws.com [54.186.198.63]) by
 relay.mimecast.com with ESMTP with STARTTLS (version=TLSv1.3,
 cipher=TLS_AES_256_GCM_SHA384) id us-mta-441-BLH5ZvVuMKyH4KDX32kVTg-1; Tue,
 12 Nov 2024 10:39:48 -0500
X-MC-Unique: BLH5ZvVuMKyH4KDX32kVTg-1
X-Mimecast-MFC-AGG-ID: BLH5ZvVuMKyH4KDX32kVTg
Received: from mx-prod-int-04.mail-002.prod.us-west-2.aws.redhat.com
 (mx-prod-int-04.mail-002.prod.us-west-2.aws.redhat.com [10.30.177.40])
 (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
 key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
 (No client certificate requested)
 by mx-prod-mc-02.mail-002.prod.us-west-2.aws.redhat.com (Postfix) with ESMTPS
 id 702141955F43; Tue, 12 Nov 2024 15:39:47 +0000 (UTC)
Received: from calimero.vinschen.de (unknown [10.39.193.40])
 by mx-prod-int-04.mail-002.prod.us-west-2.aws.redhat.com (Postfix) with ESMTPS
 id 1EE271955F3C; Tue, 12 Nov 2024 15:39:47 +0000 (UTC)
Received: by calimero.vinschen.de (Postfix, from userid 500)
 id A9E71A806B7; Tue, 12 Nov 2024 16:39:44 +0100 (CET)
Date: Tue, 12 Nov 2024 16:39:44 +0100
From: Corinna Vinschen <vinschen@redhat.com>
To: Christopher S M Hall <christopher.s.hall@intel.com>
Cc: intel-wired-lan@lists.osuosl.org, david.zage@intel.com,
 vinicius.gomes@intel.com, netdev@vger.kernel.org,
 rodrigo.cadore@l-acoustics.com
Message-ID: <ZzN2wIg6qE3_gAm4@calimero.vinschen.de>
Mail-Followup-To: Christopher S M Hall <christopher.s.hall@intel.com>,
 intel-wired-lan@lists.osuosl.org, david.zage@intel.com,
 vinicius.gomes@intel.com, netdev@vger.kernel.org,
 rodrigo.cadore@l-acoustics.com
References: <20241106184722.17230-1-christopher.s.hall@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
In-Reply-To: <20241106184722.17230-1-christopher.s.hall@intel.com>
X-Scanned-By: MIMEDefang 3.0 on 10.30.177.40
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=redhat.com; 
 s=mimecast20190719; t=1731425992;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 in-reply-to:in-reply-to:references:references;
 bh=COWxCBk/xn+lK69v98IsMcjt5CTY0uE+IGQAJjbnHp0=;
 b=BzJzfH1Q5hyykWt0JC+gV8ISYOSXAbe3po4+vh3Fngkxd53XRU/bCudbcxYic5cOMAkJ2j
 AIvwTZvxS64D1GMnTigkOuUKIQ5dDV1VfFgg0kFG22RZSiYh76/17V1AupArU2Hd1aCoqW
 ZXg8xlnSIadwlisY+TbNICVXNC1DAA4=
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=redhat.com
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (1024-bit key) header.d=redhat.com header.i=@redhat.com
 header.a=rsa-sha256 header.s=mimecast20190719 header.b=BzJzfH1Q
Subject: Re: [Intel-wired-lan] [PATCH iwl-net v3 0/6] igc: Fix PTM timeout
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

Hi Chris,

On Nov  6 18:47, Christopher S M Hall wrote:
> There have been sporadic reports of PTM timeouts using i225/i226 devices
> 
> These timeouts have been root caused to:
> 
> 1) Manipulating the PTM status register while PTM is enabled and triggered
> 2) The hardware retrying too quickly when an inappropriate response is
>    received from the upstream device
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
> Additional problem description tested by:
> Corinna Vinschen <vinschen@redhat.com>
> 
>   This patch also fixes a hang in igc_probe() when loading the igc
>   driver in the kdump kernel on systems supporting PTM.
> 
>   The igc driver running in the base kernel enables PTM trigger in
>   igc_probe().  Therefore the driver is always in PTM trigger mode,
>   except in brief periods when manually triggering a PTM cycle.
> 
>   When a crash occurs, the NIC is reset while PTM trigger is enabled.
>   Due to a hardware problem, the NIC is subsequently in a bad busmaster
>   state and doesn't handle register reads/writes.  When running
>   igc_probe() in the kdump kernel, the first register access to a NIC
>   register hangs driver probing and ultimately breaks kdump.
> 
>   With this patch, igc has PTM trigger disabled most of the time,
>   and the trigger is only enabled for very brief (10 - 100 us) periods
>   when manually triggering a PTM cycle.  Chances that a crash occurs
>   during a PTM trigger are not zero, but extremly reduced.

The patchset looks good to me, but I don't see that this description
will make it into the commit message of patch 1.  Was that intended?

Other than that...

Reviewed-by: Corinna Vinschen <vinschen@redhat.com>


Thanks,
Corinna

