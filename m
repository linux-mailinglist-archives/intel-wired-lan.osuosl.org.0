Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id A6CBB48E852
	for <lists+intel-wired-lan@lfdr.de>; Fri, 14 Jan 2022 11:27:59 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id 3A51340482;
	Fri, 14 Jan 2022 10:27:58 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id nHGV9Qt5EC4s; Fri, 14 Jan 2022 10:27:57 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id DD7C640364;
	Fri, 14 Jan 2022 10:27:56 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id CD0821BF37A
 for <intel-wired-lan@lists.osuosl.org>; Fri, 14 Jan 2022 10:27:51 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id B72C9415B1
 for <intel-wired-lan@lists.osuosl.org>; Fri, 14 Jan 2022 10:27:51 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Authentication-Results: smtp4.osuosl.org (amavisd-new);
 dkim=pass (1024-bit key) header.d=redhat.com
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id CYTKWzbAj6gJ for <intel-wired-lan@lists.osuosl.org>;
 Fri, 14 Jan 2022 10:27:51 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
Received: from us-smtp-delivery-124.mimecast.com
 (us-smtp-delivery-124.mimecast.com [170.10.129.124])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 20DE0415A8
 for <intel-wired-lan@lists.osuosl.org>; Fri, 14 Jan 2022 10:27:51 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
 s=mimecast20190719; t=1642156070;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 in-reply-to:in-reply-to:references:references;
 bh=Xw8iKaLj3nJD+szzIIhU69FW+tIoZI0k6jaTf1rOw+4=;
 b=WVpkVC2VG3ZXStmG/tMNW2YCJvzWe8HjEA8xqs/loPJnHFhG+R4CXUpcjF+6oWLbZYBWue
 pwlSEKtgG/Bw/QAVvH3OFmMWSt2ysBo/A5wm8Op3tdSdpNN+4iq+tH+tZQc+f9yH26podk
 zJye777mQDupd2okH3T1DZGNsd0V7kw=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 us-mta-665-AOSJnuNIPBqP8NrnrYmxug-1; Fri, 14 Jan 2022 05:27:46 -0500
X-MC-Unique: AOSJnuNIPBqP8NrnrYmxug-1
Received: from smtp.corp.redhat.com (int-mx05.intmail.prod.int.phx2.redhat.com
 [10.5.11.15])
 (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
 (No client certificate requested)
 by mimecast-mx01.redhat.com (Postfix) with ESMTPS id 4D33118C89CF;
 Fri, 14 Jan 2022 10:27:45 +0000 (UTC)
Received: from calimero.vinschen.de (ovpn-112-14.ams2.redhat.com
 [10.36.112.14])
 by smtp.corp.redhat.com (Postfix) with ESMTPS id E93496D036;
 Fri, 14 Jan 2022 10:27:44 +0000 (UTC)
Received: by calimero.vinschen.de (Postfix, from userid 500)
 id 5AE5DA80ED6; Fri, 14 Jan 2022 11:27:43 +0100 (CET)
Date: Fri, 14 Jan 2022 11:27:43 +0100
From: Corinna Vinschen <vinschen@redhat.com>
To: Vinicius Costa Gomes <vinicius.gomes@intel.com>
Message-ID: <YeFQH0/LY9R9GWxF@calimero.vinschen.de>
Mail-Followup-To: Vinicius Costa Gomes <vinicius.gomes@intel.com>,
 netdev@vger.kernel.org, intel-wired-lan@lists.osuosl.org,
 Andre Guedes <andre.guedes@intel.com>
References: <20220113160021.1027704-1-vinschen@redhat.com>
 <87sftr6tle.fsf@intel.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <87sftr6tle.fsf@intel.com>
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.15
Subject: Re: [Intel-wired-lan] [PATCH net-next] igc: avoid kernel warning
 when changing RX ring parameters
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
Cc: netdev@vger.kernel.org, Andre Guedes <andre.guedes@intel.com>,
 intel-wired-lan@lists.osuosl.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

On Jan 13 16:37, Vinicius Costa Gomes wrote:
> Corinna Vinschen <vinschen@redhat.com> writes:
> 
> > Calling ethtool changing the RX ring parameters like this:
> >
> >   $ ethtool -G eth0 rx 1024
> >
> > triggers the "Missing unregister, handled but fix driver" warning in
> > xdp_rxq_info_reg().
> >[...]
> 
> Reaching "inside" xdp_rxq to reset it doesn't feel right in this
> context, even if it's going to work fine (for now).
> 
> I think that the suggestion that Alexander gave in that other thread is
> the best approach. And thanks for noticing that igb '_set_ringparam()'
> has the same underlying problem and also needs to be fixed.

Yeah, it didn't sit overly well with me either, but I thought if it's
good for igb...

Either way, the better approach should be sth. like this in both,
ig[bc]_setup_rx_resources:

	if (xdp_rxq_info_is_reg(&rx_ring->xdp_rxq))
		xdp_rxq_info_unreg(&rx_ring->xdp_rxq);
	res = xdp_rxq_info_reg(&rx_ring->xdp_rxq, ndev, index,
			       rx_ring->q_vector->napi.napi_id);

And while at it, wouldn't it make sense to move the xdp_rxq_info_reg
call in igc_setup_rx_resources down to be the last action, so the error
path doesn't have to call xdp_rxq_info_unreg, just like in
igb_setup_rx_resources?


Thanks,
Corinna

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
