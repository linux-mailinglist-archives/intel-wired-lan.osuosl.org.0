Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [IPv6:2605:bc80:3010::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 431F294ADDC
	for <lists+intel-wired-lan@lfdr.de>; Wed,  7 Aug 2024 18:16:37 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id 8DA5640469;
	Wed,  7 Aug 2024 16:16:34 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id UGLD-sf_UC43; Wed,  7 Aug 2024 16:16:33 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.34; helo=ash.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org C822D40B29
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1723047393;
	bh=fAagdNuIXlb/vJ1xLFkszZv7WfOecHpqqTnZjQT3Wm4=;
	h=Date:From:To:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=O0DJL8VL4D/x9cyLmH5pQ8joGPr03in2Frz8NCBpsTrIZR8rPCxbsLAnD2ikEJWlN
	 xEbCH/m1Gtod3EFIUcV5dhuLWdF0dsODoBlnVvC+gvVrXaEQxeweCzRKQs6ap8SLwb
	 gXrCOUgm5JM1IPMbahNqBXANlG3cVc4l5jZvfqg6OmBD24av3by0yfqcoU0uy97n2Q
	 aYaG5TzC+eCRSbMJ6B3HZnbc4wFY0CzxTkwVMXnDWNp3d0F49Ui2sBEEU4EXVrJVw2
	 jHsXYrJ29Dx0gM05a7ScOCbR3AJOVgTya5dseSsjUovQ65dzutddTdLkPTuSMO3LCk
	 k1WuhmZL7f98g==
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id C822D40B29;
	Wed,  7 Aug 2024 16:16:33 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 9C4051BF4D8
 for <intel-wired-lan@lists.osuosl.org>; Wed,  7 Aug 2024 16:16:30 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 884BF40469
 for <intel-wired-lan@lists.osuosl.org>; Wed,  7 Aug 2024 16:16:30 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id W_XD3Cv-72th for <intel-wired-lan@lists.osuosl.org>;
 Wed,  7 Aug 2024 16:16:29 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=170.10.133.124;
 helo=us-smtp-delivery-124.mimecast.com; envelope-from=vinschen@redhat.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp2.osuosl.org 2975240298
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 2975240298
Received: from us-smtp-delivery-124.mimecast.com
 (us-smtp-delivery-124.mimecast.com [170.10.133.124])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 2975240298
 for <intel-wired-lan@lists.osuosl.org>; Wed,  7 Aug 2024 16:16:28 +0000 (UTC)
Received: from mx-prod-mc-01.mail-002.prod.us-west-2.aws.redhat.com
 (ec2-54-186-198-63.us-west-2.compute.amazonaws.com [54.186.198.63]) by
 relay.mimecast.com with ESMTP with STARTTLS (version=TLSv1.3,
 cipher=TLS_AES_256_GCM_SHA384) id us-mta-696-f71GHZWQNLuhs1Fyn0Bu0A-1; Wed,
 07 Aug 2024 12:16:02 -0400
X-MC-Unique: f71GHZWQNLuhs1Fyn0Bu0A-1
Received: from mx-prod-int-04.mail-002.prod.us-west-2.aws.redhat.com
 (mx-prod-int-04.mail-002.prod.us-west-2.aws.redhat.com [10.30.177.40])
 (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
 key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
 (No client certificate requested)
 by mx-prod-mc-01.mail-002.prod.us-west-2.aws.redhat.com (Postfix) with ESMTPS
 id A2F7D19560A6; Wed,  7 Aug 2024 16:15:53 +0000 (UTC)
Received: from calimero.vinschen.de (unknown [10.39.192.194])
 by mx-prod-int-04.mail-002.prod.us-west-2.aws.redhat.com (Postfix) with ESMTPS
 id 00E9A19560AE; Wed,  7 Aug 2024 16:15:53 +0000 (UTC)
Received: by calimero.vinschen.de (Postfix, from userid 500)
 id 9665DA80E8E; Wed,  7 Aug 2024 18:15:50 +0200 (CEST)
Date: Wed, 7 Aug 2024 18:15:50 +0200
From: Corinna Vinschen <vinschen@redhat.com>
To: christopher.s.hall@intel.com
Message-ID: <ZrOdthE36RQy78fx@calimero.vinschen.de>
Mail-Followup-To: christopher.s.hall@intel.com,
 intel-wired-lan@lists.osuosl.org, david.zage@intel.com,
 vinicius.gomes@intel.com, netdev@vger.kernel.org,
 Michal Swiatkowski <michal.swiatkowski@linux.intel.com>,
 rodrigo.cadore@l-acoustics.com
References: <20240807003032.10300-1-christopher.s.hall@intel.com>
 <20240807003032.10300-2-christopher.s.hall@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
In-Reply-To: <20240807003032.10300-2-christopher.s.hall@intel.com>
X-Scanned-By: MIMEDefang 3.0 on 10.30.177.40
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=redhat.com; 
 s=mimecast20190719; t=1723047387;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 in-reply-to:in-reply-to:references:references;
 bh=fAagdNuIXlb/vJ1xLFkszZv7WfOecHpqqTnZjQT3Wm4=;
 b=XsEYRaY+0+jjtANTdfODuzc0ypVAgB0LRfbnxZGkWkIjle2sWW53y8l/f/l6bXPU1yAgNt
 dLepYNpATFBp8RRJ2rsMnA/hBv0JlJhYWnjX6GAhXFZOhQCB8IQXH/srrSKUENpn58snHB
 S1e0+knvNjSB8023veTQDbrw2IW/zAQ=
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=redhat.com
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (1024-bit key,
 unprotected) header.d=redhat.com header.i=@redhat.com header.a=rsa-sha256
 header.s=mimecast20190719 header.b=XsEYRaY+
Subject: Re: [Intel-wired-lan] [PATCH iwl-net v1 1/5] igc: Ensure the PTM
 cycle is reliably triggered
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
Cc: david.zage@intel.com, vinicius.gomes@intel.com, netdev@vger.kernel.org,
 intel-wired-lan@lists.osuosl.org,
 Michal Swiatkowski <michal.swiatkowski@linux.intel.com>,
 rodrigo.cadore@l-acoustics.com
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

Hi Christopher,

On Aug  6 17:30, christopher.s.hall@intel.com wrote:
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

It would be great to add the problems encountered with kdump to the
commit message as well, as discussed with Vinicius, wouldn't it?

If you need a description, I can provide one.


Thanks,
Corinna

