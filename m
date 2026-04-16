Return-Path: <intel-wired-lan-bounces@osuosl.org>
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id +LyZGgy94GmTlQAAu9opvQ
	(envelope-from <intel-wired-lan-bounces@osuosl.org>)
	for <lists+intel-wired-lan@lfdr.de>; Thu, 16 Apr 2026 12:42:20 +0200
X-Original-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 9E45740D03E
	for <lists+intel-wired-lan@lfdr.de>; Thu, 16 Apr 2026 12:42:19 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 4016340868;
	Thu, 16 Apr 2026 10:42:18 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id 26UQFsPm_Ih1; Thu, 16 Apr 2026 10:42:17 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org BB30F40869
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1776336137;
	bh=YcHRMn2MX9rE+OcZPrjtF6d4B4T1aBhGiFRSbBkCQVE=;
	h=Date:From:To:Cc:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=DBfIj+o4v1ZOTQwC2sDH2L5IbM/UBdcud6orSsDJ0m9T5VP53zyKt7FHL4sPAgW50
	 ue3++eN34NBleer2DLaStGCukcr8DPSj7e94JglatI7l1qkPMTc9CDM2AFJt7yo2+U
	 QlHKfPGukk0j2uZkFoU/z6pMXcym8NOq2xdl9ygCghYOAc+TsYQA9c9QWtSHAIUCoz
	 Y6x8iPYDMd86YBt5LxWPgQF4EpQkU/aGkQpBquJAZE5gU1vfJb+Csme+UQQL9j+Tm/
	 kOGfBO1LqXT1OGd7YnfhwOPJrBLCleN700jEoby0g141eI7icjjEhyxQFd2gxHe5D2
	 T8Djw2hlkaj0g==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp4.osuosl.org (Postfix) with ESMTP id BB30F40869;
	Thu, 16 Apr 2026 10:42:17 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
 by lists1.osuosl.org (Postfix) with ESMTP id 7F714127
 for <intel-wired-lan@lists.osuosl.org>; Thu, 16 Apr 2026 10:42:16 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 70AA26070D
 for <intel-wired-lan@lists.osuosl.org>; Thu, 16 Apr 2026 10:42:16 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id Si3wq2nk9g7A for <intel-wired-lan@lists.osuosl.org>;
 Thu, 16 Apr 2026 10:42:15 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=170.10.133.124;
 helo=us-smtp-delivery-124.mimecast.com; envelope-from=vinschen@redhat.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp3.osuosl.org 6683B606F0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 6683B606F0
Received: from us-smtp-delivery-124.mimecast.com
 (us-smtp-delivery-124.mimecast.com [170.10.133.124])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 6683B606F0
 for <intel-wired-lan@lists.osuosl.org>; Thu, 16 Apr 2026 10:42:14 +0000 (UTC)
Received: from mx-prod-mc-03.mail-002.prod.us-west-2.aws.redhat.com
 (ec2-54-186-198-63.us-west-2.compute.amazonaws.com [54.186.198.63]) by
 relay.mimecast.com with ESMTP with STARTTLS (version=TLSv1.3,
 cipher=TLS_AES_256_GCM_SHA384) id us-mta-642--14bVJQ7OcKPn3bjhwmcBw-1; Thu,
 16 Apr 2026 06:42:11 -0400
X-MC-Unique: -14bVJQ7OcKPn3bjhwmcBw-1
X-Mimecast-MFC-AGG-ID: -14bVJQ7OcKPn3bjhwmcBw_1776336130
Received: from mx-prod-int-03.mail-002.prod.us-west-2.aws.redhat.com
 (mx-prod-int-03.mail-002.prod.us-west-2.aws.redhat.com [10.30.177.12])
 (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
 key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
 (No client certificate requested)
 by mx-prod-mc-03.mail-002.prod.us-west-2.aws.redhat.com (Postfix) with ESMTPS
 id 4F8CF1955F0E; Thu, 16 Apr 2026 10:42:10 +0000 (UTC)
Received: from calimero.vinschen.de (unknown [10.44.32.30])
 by mx-prod-int-03.mail-002.prod.us-west-2.aws.redhat.com (Postfix) with ESMTPS
 id 05B1A19560B6; Thu, 16 Apr 2026 10:42:10 +0000 (UTC)
Received: by calimero.vinschen.de (Postfix, from userid 500)
 id 70801A80D59; Thu, 16 Apr 2026 12:42:07 +0200 (CEST)
Date: Thu, 16 Apr 2026 12:42:07 +0200
From: Corinna Vinschen <vinschen@redhat.com>
To: "Loktionov, Aleksandr" <aleksandr.loktionov@intel.com>
Cc: "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>,
 "netdev@vger.kernel.org" <netdev@vger.kernel.org>,
 Corinna Vinschen <vinschen@redhat.com>
Message-ID: <aeC8_9rAGqj915-8@calimero.vinschen.de>
Mail-Followup-To: "Loktionov, Aleksandr" <aleksandr.loktionov@intel.com>,
 "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>,
 "netdev@vger.kernel.org" <netdev@vger.kernel.org>
References: <20260416084227.3787828-1-vinschen@redhat.com>
 <IA3PR11MB898633AB0B2D010F495944E8E5232@IA3PR11MB8986.namprd11.prod.outlook.com>
MIME-Version: 1.0
In-Reply-To: <IA3PR11MB898633AB0B2D010F495944E8E5232@IA3PR11MB8986.namprd11.prod.outlook.com>
X-Scanned-By: MIMEDefang 3.0 on 10.30.177.12
X-Mimecast-MFC-PROC-ID: r7jWl5YpWjWJgu-mtREmnMc02IZrTJVuWvQHQeYC7DE_1776336130
X-Mimecast-Originator: redhat.com
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=redhat.com; 
 s=mimecast20190719; t=1776336133;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 in-reply-to:in-reply-to:references:references;
 bh=YcHRMn2MX9rE+OcZPrjtF6d4B4T1aBhGiFRSbBkCQVE=;
 b=GSPL9eLt2ZlEdFRa0hKgogDiRP0xMVE0oFVbkzvPTyC3lJ8Dvoayt/21T0Hcz3eyOe+ABn
 tk2OR6jvX3FhGkw/YvSHG166o5LrEvsreQNSevGl8tbJE1qzGVRR+M5uwkWOy05O53UKyQ
 qZvFlq7SulO2r7ecmFUkw20A0Og5NK8=
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dmarc=pass (p=quarantine dis=none)
 header.from=redhat.com
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (1024-bit key) header.d=redhat.com header.i=@redhat.com
 header.a=rsa-sha256 header.s=mimecast20190719 header.b=GSPL9eLt
Subject: Re: [Intel-wired-lan] [PATCH net] ixgbe: only access vfinfo and
 mv_list under RCU lock
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
X-Spamd-Result: default: False [0.79 / 15.00];
	DMARC_POLICY_QUARANTINE(1.50)[redhat.com : SPF not aligned (relaxed), DKIM not aligned (relaxed),quarantine];
	R_SPF_ALLOW(-0.20)[+mx];
	MAILLIST(-0.20)[mailman];
	R_DKIM_ALLOW(-0.20)[osuosl.org:s=default];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	FORGED_RECIPIENTS(0.00)[m:aleksandr.loktionov@intel.com,m:netdev@vger.kernel.org,m:vinschen@redhat.com,s:lists@lfdr.de];
	DBL_BLOCKED_OPENRESOLVER(0.00)[osuosl.org:dkim,osuosl.org:email];
	TO_DN_EQ_ADDR_SOME(0.00)[];
	TO_DN_SOME(0.00)[];
	ARC_NA(0.00)[];
	MIME_TRACE(0.00)[0:+];
	FORWARDED(0.00)[intel-wired-lan@lists.osuosl.org];
	DKIM_TRACE(0.00)[osuosl.org:+];
	MISSING_XM_UA(0.00)[];
	FORGED_SENDER(0.00)[vinschen@redhat.com,intel-wired-lan-bounces@osuosl.org];
	FORGED_SENDER_FORWARDING(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[vinschen@redhat.com,intel-wired-lan-bounces@osuosl.org];
	FROM_HAS_DN(0.00)[];
	RCPT_COUNT_THREE(0.00)[4];
	PREVIOUSLY_DELIVERED(0.00)[intel-wired-lan@lists.osuosl.org];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	NEURAL_HAM(-0.00)[-0.999];
	ASN(0.00)[asn:3701, ipnet:140.211.0.0/16, country:US];
	TAGGED_RCPT(0.00)[intel-wired-lan];
	RCVD_COUNT_SEVEN(0.00)[11]
X-Rspamd-Queue-Id: 9E45740D03E
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

On Apr 16 09:23, Loktionov, Aleksandr wrote:
> > From: Intel-wired-lan <intel-wired-lan-bounces@osuosl.org> On Behalf
> > [...]
> > @@ -9744,17 +9781,23 @@ static int ixgbe_ndo_get_vf_stats(struct
> > net_device *netdev, int vf,
> >  				  struct ifla_vf_stats *vf_stats)
> >  {
> >  	struct ixgbe_adapter *adapter = ixgbe_from_netdev(netdev);
> > +	struct vf_data_storage *vfinfo;
> > 
> >  	if (vf < 0 || vf >= adapter->num_vfs)
> >  		return -EINVAL;
> > 
> > -	vf_stats->rx_packets = adapter->vfinfo[vf].vfstats.gprc;
> > -	vf_stats->rx_bytes   = adapter->vfinfo[vf].vfstats.gorc;
> > -	vf_stats->tx_packets = adapter->vfinfo[vf].vfstats.gptc;
> > -	vf_stats->tx_bytes   = adapter->vfinfo[vf].vfstats.gotc;
> > -	vf_stats->multicast  = adapter->vfinfo[vf].vfstats.mprc;
> > +	rcu_read_lock();
> > +	vfinfo = rcu_dereference(adapter->vfinfo);
> > +	if (vfinfo) {
> > +		vf_stats->rx_packets = vfinfo[vf].vfstats.gprc;
> > +		vf_stats->rx_bytes   = vfinfo[vf].vfstats.gorc;
> > +		vf_stats->tx_packets = vfinfo[vf].vfstats.gptc;
> > +		vf_stats->tx_bytes   = vfinfo[vf].vfstats.gotc;
> > +		vf_stats->multicast  = vfinfo[vf].vfstats.mprc;
> > +	}
> > +	rcu_read_unlock();
> > 
> > -	return 0;
> > +	return vfinfo ? 0 : -EINVAL;
> Before it returned always success, but now it will break 'ip link show dev' in short window when SR-IOV is being torn down.
> For me it looks like UAPI regression.

Good point.  I'll change that back for a v2, just waiting for more
feedback.


Thanks,
Corinna

