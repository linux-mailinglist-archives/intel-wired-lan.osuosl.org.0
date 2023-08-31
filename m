Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 489D278ECF0
	for <lists+intel-wired-lan@lfdr.de>; Thu, 31 Aug 2023 14:19:27 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id AEDA383163;
	Thu, 31 Aug 2023 12:19:25 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org AEDA383163
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1693484365;
	bh=An4wrVPRE7s35kl30kENnEq+JpBGC+XF4nUhRzYkSak=;
	h=Date:From:To:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=vYDS6CqruWzebJKhodGfHXy1TrRyP5n5xncr7FCMwUQk5JjcjeJR6vyVpQ6zypuCy
	 dEVlt4RezEk/ogbPp9mbKuKzrXBZgBDPy3W0E1bByIIqgUBaz3HGmVtRk7xF1nq/ze
	 DpNOLIciETG2+TF7ahxrulta6A6ATuxXb+6k+k6S6T6fpochzNcHF/9NxAQoRFZJUX
	 cxl0B3TeQN3NNdJ002aJkvwC5JF314PrG2ijb+ZsY1O9i0PVSA2mbygFdlURbX2vtv
	 tmLUfgKw+oV8EdUEI2YU7vWpswwSz4U9IU7A+88RkS14FmTa24skfsR+AwjaLYtpgb
	 GfymjM7PRG5hw==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
	by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id H6Iw1ntVSKGp; Thu, 31 Aug 2023 12:19:24 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id 9A7438226E;
	Thu, 31 Aug 2023 12:19:24 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 9A7438226E
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 5012A1BF3D1
 for <intel-wired-lan@lists.osuosl.org>; Thu, 31 Aug 2023 12:19:19 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 278D6612CE
 for <intel-wired-lan@lists.osuosl.org>; Thu, 31 Aug 2023 12:19:19 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 278D6612CE
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id HS7QFgzyFsCJ for <intel-wired-lan@lists.osuosl.org>;
 Thu, 31 Aug 2023 12:19:18 +0000 (UTC)
Received: from us-smtp-delivery-124.mimecast.com
 (us-smtp-delivery-124.mimecast.com [170.10.129.124])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 5A85E60BE9
 for <intel-wired-lan@lists.osuosl.org>; Thu, 31 Aug 2023 12:19:18 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 5A85E60BE9
Received: from mimecast-mx02.redhat.com (mx-ext.redhat.com [66.187.233.73])
 by relay.mimecast.com with ESMTP with STARTTLS (version=TLSv1.2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 us-mta-495-Bj2w-xHqPXCqCoMoAT5uXw-1; Thu, 31 Aug 2023 08:19:10 -0400
X-MC-Unique: Bj2w-xHqPXCqCoMoAT5uXw-1
Received: from smtp.corp.redhat.com (int-mx06.intmail.prod.int.rdu2.redhat.com
 [10.11.54.6])
 (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
 (No client certificate requested)
 by mimecast-mx02.redhat.com (Postfix) with ESMTPS id 0EC3E1C07590;
 Thu, 31 Aug 2023 12:19:10 +0000 (UTC)
Received: from calimero.vinschen.de (unknown [10.39.192.15])
 by smtp.corp.redhat.com (Postfix) with ESMTPS id CD95D2166B25;
 Thu, 31 Aug 2023 12:19:09 +0000 (UTC)
Received: by calimero.vinschen.de (Postfix, from userid 500)
 id 798BBA81EA3; Thu, 31 Aug 2023 14:19:08 +0200 (CEST)
Date: Thu, 31 Aug 2023 14:19:08 +0200
From: Corinna Vinschen <vinschen@redhat.com>
To: Paolo Abeni <pabeni@redhat.com>
Message-ID: <ZPCFPBOPchpKUEyl@calimero.vinschen.de>
Mail-Followup-To: Paolo Abeni <pabeni@redhat.com>,
 Tony Nguyen <anthony.l.nguyen@intel.com>,
 jesse.brandeburg@intel.com, intel-wired-lan@lists.osuosl.org,
 netdev@vger.kernel.org
References: <20230831080916.588043-1-vinschen@redhat.com>
 <b2dcff0db691a9b358c4f89cf7a5b65a5a7dc4c5.camel@redhat.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <b2dcff0db691a9b358c4f89cf7a5b65a5a7dc4c5.camel@redhat.com>
X-Scanned-By: MIMEDefang 3.1 on 10.11.54.6
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=redhat.com; 
 s=mimecast20190719; t=1693484357;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 in-reply-to:in-reply-to:references:references;
 bh=r44FJHyZKkNNi8TCBVOpCbHH7Y9gKQJrc4FVZ3OS63U=;
 b=ORPRpbg05ECgvAnyruYkv1nMuI9+exJ8ERbXUlLzgOoW59sP5yMNWh1+tDKcDAqpsrSkhI
 rDajf2NCPxZpKGslOO7Lq5deRdyH2cWfa8fSBCOLfQPsW16e2xPZe8O7gBd+W0yx1DLUkA
 ERuONIMKffTmg3aNJT4PY4YnHmhgnkE=
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (1024-bit key) header.d=redhat.com header.i=@redhat.com
 header.a=rsa-sha256 header.s=mimecast20190719 header.b=ORPRpbg0
Subject: Re: [Intel-wired-lan] [PATCH] igb: disable virtualization features
 on 82580
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
Cc: intel-wired-lan@lists.osuosl.org, Tony Nguyen <anthony.l.nguyen@intel.com>,
 jesse.brandeburg@intel.com, netdev@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

Hi Paolo,

On Aug 31 13:41, Paolo Abeni wrote:
> On Thu, 2023-08-31 at 10:09 +0200, Corinna Vinschen wrote:
> > Disable virtualization features on 82580 just as on i210/i211.
> > This avoids that virt functions are acidentally called on 82850.
> > 
> > Signed-off-by: Corinna Vinschen <vinschen@redhat.com>
> 
> This looks like a fix to me?!? if so a suitable 'Fixes' tag should be
> included.

I tried, but failed to come up with one.  When 82580 was introduced, the
conditional in question didn't exist at all and the igb_probe_vfs
function looked pretty different.  When i210 was introduced, the
conditional was created the first time.  So I was a bit puzzled if this
fixes the patch introducing 82580, or if it fixes the introduction of
the conditional, or if it's just kind of "new functionality".

Your mail got me thinking again, and I'm going to send a v2, blaming the
patch introducing 52580. It failed to guard igb_probe_vfs correctly.
When i210 was introduced, a matching conditional should have already
existed.


Thanks,
Corinna

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
