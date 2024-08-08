Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 5B08694C03A
	for <lists+intel-wired-lan@lfdr.de>; Thu,  8 Aug 2024 16:51:13 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 618A040B43;
	Thu,  8 Aug 2024 14:51:11 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id I6vmmvUalf0g; Thu,  8 Aug 2024 14:51:10 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.34; helo=ash.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 70F7B409FD
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1723128670;
	bh=xwe03wU+6fEozd2HZdIZ+6GCEx1pYE4TjOsp+H7Gumw=;
	h=Date:From:To:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=EL5+guBYk1rhJr8jrsHBunXsV3SX1t+FQFvKxqkV1cywJ1QJOe9y+k5Ya78jF05HB
	 k6QeTHSrX2vC6nId3lbNsm7MkufpSpe9YsXBsGRFzv1kpvUa6eE2ax/pm64b5ORRV0
	 +s4aqFWT8htKAIxDqfPNaUg4yFI2+XRbhaPrqu/NCFno/Sm1HdBbmyoi6Jgjr9aeda
	 iKUlIGkvZpNr5pjLRYHmWNOKIsn2gR+A7CHtTkNv8xNy/Qu47k6lNVRR4Flpe44FyQ
	 3L2wdFYtchhGEzs/t52EafXMs6GgXGDr2juWzFxNx9IOG4Dy7AGQYZmMQu4o33QoRZ
	 XqhWtqBrOZ8mQ==
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id 70F7B409FD;
	Thu,  8 Aug 2024 14:51:10 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 89DA81BF2B4
 for <intel-wired-lan@lists.osuosl.org>; Thu,  8 Aug 2024 14:51:08 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 7590240E0E
 for <intel-wired-lan@lists.osuosl.org>; Thu,  8 Aug 2024 14:51:08 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id yoIjPhmDakzp for <intel-wired-lan@lists.osuosl.org>;
 Thu,  8 Aug 2024 14:51:05 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=170.10.133.124;
 helo=us-smtp-delivery-124.mimecast.com; envelope-from=vinschen@redhat.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp2.osuosl.org 2E94B40042
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 2E94B40042
Received: from us-smtp-delivery-124.mimecast.com
 (us-smtp-delivery-124.mimecast.com [170.10.133.124])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 2E94B40042
 for <intel-wired-lan@lists.osuosl.org>; Thu,  8 Aug 2024 14:51:04 +0000 (UTC)
Received: from mx-prod-mc-02.mail-002.prod.us-west-2.aws.redhat.com
 (ec2-54-186-198-63.us-west-2.compute.amazonaws.com [54.186.198.63]) by
 relay.mimecast.com with ESMTP with STARTTLS (version=TLSv1.3,
 cipher=TLS_AES_256_GCM_SHA384) id us-mta-306-Q2kM1dg_MHWDO1_XQG-1xQ-1; Thu,
 08 Aug 2024 10:50:58 -0400
X-MC-Unique: Q2kM1dg_MHWDO1_XQG-1xQ-1
Received: from mx-prod-int-01.mail-002.prod.us-west-2.aws.redhat.com
 (mx-prod-int-01.mail-002.prod.us-west-2.aws.redhat.com [10.30.177.4])
 (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
 key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
 (No client certificate requested)
 by mx-prod-mc-02.mail-002.prod.us-west-2.aws.redhat.com (Postfix) with ESMTPS
 id E72F0195423F; Thu,  8 Aug 2024 14:50:55 +0000 (UTC)
Received: from calimero.vinschen.de (unknown [10.39.192.194])
 by mx-prod-int-01.mail-002.prod.us-west-2.aws.redhat.com (Postfix) with ESMTPS
 id 4BC36300018D; Thu,  8 Aug 2024 14:50:55 +0000 (UTC)
Received: by calimero.vinschen.de (Postfix, from userid 500)
 id C19F2A809E4; Thu,  8 Aug 2024 16:50:52 +0200 (CEST)
Date: Thu, 8 Aug 2024 16:50:52 +0200
From: Corinna Vinschen <vinschen@redhat.com>
To: "Hall, Christopher S" <christopher.s.hall@intel.com>
Message-ID: <ZrTbTNOOJq6NgX8U@calimero.vinschen.de>
Mail-Followup-To: "Hall, Christopher S" <christopher.s.hall@intel.com>,
 "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>,
 "Zage, David" <david.zage@intel.com>,
 "Gomes, Vinicius" <vinicius.gomes@intel.com>,
 "netdev@vger.kernel.org" <netdev@vger.kernel.org>,
 Michal Swiatkowski <michal.swiatkowski@linux.intel.com>,
 "rodrigo.cadore@l-acoustics.com" <rodrigo.cadore@l-acoustics.com>
References: <20240807003032.10300-1-christopher.s.hall@intel.com>
 <20240807003032.10300-2-christopher.s.hall@intel.com>
 <ZrOdthE36RQy78fx@calimero.vinschen.de>
 <PH7PR11MB697875DD586111AEF3F4B5DAC2B82@PH7PR11MB6978.namprd11.prod.outlook.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
In-Reply-To: <PH7PR11MB697875DD586111AEF3F4B5DAC2B82@PH7PR11MB6978.namprd11.prod.outlook.com>
X-Scanned-By: MIMEDefang 3.4.1 on 10.30.177.4
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=redhat.com; 
 s=mimecast20190719; t=1723128663;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 in-reply-to:in-reply-to:references:references;
 bh=xwe03wU+6fEozd2HZdIZ+6GCEx1pYE4TjOsp+H7Gumw=;
 b=JpAyvzUl02hBpM1gwjMXQnH+bQVVW8u5af/HAwe3I4ANWttDEPpPWLICmq3RSmtyEnFYzu
 iue8U8bHeINd8XLft+GXd50mrcz0n9VYRsB+YR1A/xEqTCcX7FvybcuWwO3nJQJp0tArYB
 YUaMMd7GnX0UirLgjOjjeegM1S9xjPI=
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=redhat.com
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (1024-bit key,
 unprotected) header.d=redhat.com header.i=@redhat.com header.a=rsa-sha256
 header.s=mimecast20190719 header.b=JpAyvzUl
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
Cc: "Zage, David" <david.zage@intel.com>, "Gomes,
 Vinicius" <vinicius.gomes@intel.com>,
 "netdev@vger.kernel.org" <netdev@vger.kernel.org>,
 "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>,
 Michal Swiatkowski <michal.swiatkowski@linux.intel.com>,
 "rodrigo.cadore@l-acoustics.com" <rodrigo.cadore@l-acoustics.com>
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

Hi Christopher,

On Aug  7 20:27, Hall, Christopher S wrote:
> Hi Corrina,

s/rrin/rinn/ ;)

> > > PHC2SYS exits with:
> > >
> > > "ioctl PTP_OFFSET_PRECISE: Connection timed out" when the PTM
> > transaction
> > >   fails
> > 
> > It would be great to add the problems encountered with kdump to the
> > commit message as well, as discussed with Vinicius, wouldn't it?
> > 
> > If you need a description, I can provide one.
> 
> Does this patch fix the issue you observed?

Yes, it does.  

> If it does, I am happy to
> include your description of the problem it solves.

Is the following ok?

  This patch also fixes a hang in igc_probe() when loading the igc
  driver in the kdump kernel on systems supporting PTM.

  The igc driver running in the base kernel enables PTM trigger in
  igc_probe().  Therefore the driver is always in PTM trigger mode,
  except in brief periods when manually triggering a PTM cycle.

  When a crash occurs, the NIC is reset while PTM trigger is enabled.
  Due to a hardware problem, the NIC is subsequently in a bad busmaster
  state and doesn't handle register reads/writes.  When running
  igc_probe() in the kdump kernel, the first register access to a NIC
  register hangs driver probing and ultimately breaks kdump.

  With this patch, igc has PTM trigger disabled most of the time,
  and the trigger is only enabled for very brief (10 - 100 us) periods
  when manually triggering a PTM cycle.  Chances that a crash occurs
  during a PTM trigger are not 0, but extremly reduced.

> A tested-by tag would be appreciated as well.

Reviewed-by: Corinna Vinschen <vinschen@redhat.com>
Tested-by: Corinna Vinschen <vinschen@redhat.com> (kdump hang only)


Thanks,
Corinna

