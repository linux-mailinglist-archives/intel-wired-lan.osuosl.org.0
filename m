Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id F422B8AE8BC
	for <lists+intel-wired-lan@lfdr.de>; Tue, 23 Apr 2024 15:54:14 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 9D38B60A92;
	Tue, 23 Apr 2024 13:54:13 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id 5ZUiAD17zYCf; Tue, 23 Apr 2024 13:54:13 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.34; helo=ash.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org E6856605B1
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1713880453;
	bh=p6v+B7nAQZWo5vCJl/UC/x1PI1ni2PSzp7Ef9oYTXrE=;
	h=Date:From:To:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=m1cc8X6PzTJwq/E6ngaUuUY9SHoxMkJaN6YGvfp8EiQF2D2vNiX3Eolj58Opo9CFL
	 on7JcDrZ+mbCSK/BIDPWkJYAb5M46XDHKZyyWdDrLTvrHq3DOtk8BLWfGV8+YZX+mk
	 7S0WMzeCmtcsoMCswopR0zfxgVduD0YI+fsrChAMcPLwABJmGehfLXh+Cs6mNMsli5
	 182skQHIGKWJSoDzPAgF/0k9apcDe6xRvluQpVL28lpjlM04NkPXMfEi7+XKh4jmUE
	 s0Z7E1zESsR5OKkSO9n+H5H5PRRVUyvZ0IN72udrvuAWtx6BHZJ8TGnW2aoec37b8i
	 NvTzrCwhTDI6g==
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id E6856605B1;
	Tue, 23 Apr 2024 13:54:12 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 863F91BF390
 for <intel-wired-lan@lists.osuosl.org>; Tue, 23 Apr 2024 13:54:11 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 73AB781FD7
 for <intel-wired-lan@lists.osuosl.org>; Tue, 23 Apr 2024 13:54:11 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id a4M2vT2kedba for <intel-wired-lan@lists.osuosl.org>;
 Tue, 23 Apr 2024 13:54:10 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=170.10.129.124;
 helo=us-smtp-delivery-124.mimecast.com; envelope-from=vinschen@redhat.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp1.osuosl.org 5953B8126B
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 5953B8126B
Received: from us-smtp-delivery-124.mimecast.com
 (us-smtp-delivery-124.mimecast.com [170.10.129.124])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 5953B8126B
 for <intel-wired-lan@lists.osuosl.org>; Tue, 23 Apr 2024 13:54:10 +0000 (UTC)
Received: from mimecast-mx02.redhat.com (mimecast-mx02.redhat.com
 [66.187.233.88]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.3, cipher=TLS_AES_256_GCM_SHA384) id
 us-mta-681-LYbZMmwYODObzdhPOdNSVg-1; Tue, 23 Apr 2024 09:54:07 -0400
X-MC-Unique: LYbZMmwYODObzdhPOdNSVg-1
Received: from smtp.corp.redhat.com (int-mx09.intmail.prod.int.rdu2.redhat.com
 [10.11.54.9])
 (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
 key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
 (No client certificate requested)
 by mimecast-mx02.redhat.com (Postfix) with ESMTPS id D9B7C812C50;
 Tue, 23 Apr 2024 13:54:06 +0000 (UTC)
Received: from calimero.vinschen.de (unknown [10.39.194.197])
 by smtp.corp.redhat.com (Postfix) with ESMTPS id A442B400EB2;
 Tue, 23 Apr 2024 13:54:06 +0000 (UTC)
Received: by calimero.vinschen.de (Postfix, from userid 500)
 id A6479A80D01; Tue, 23 Apr 2024 15:54:05 +0200 (CEST)
Date: Tue, 23 Apr 2024 15:54:05 +0200
From: Corinna Vinschen <vinschen@redhat.com>
To: Jiri Pirko <jiri@resnulli.us>
Message-ID: <Zie9ffllQf8qxv2-@calimero.vinschen.de>
Mail-Followup-To: Jiri Pirko <jiri@resnulli.us>, netdev@vger.kernel.org,
 intel-wired-lan@lists.osuosl.org
References: <20240423102446.901450-1-vinschen@redhat.com>
 <Ziea2_SRYoGcy9Sw@nanopsycho>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
In-Reply-To: <Ziea2_SRYoGcy9Sw@nanopsycho>
X-Scanned-By: MIMEDefang 3.4.1 on 10.11.54.9
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=redhat.com; 
 s=mimecast20190719; t=1713880449;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 in-reply-to:in-reply-to:references:references;
 bh=p6v+B7nAQZWo5vCJl/UC/x1PI1ni2PSzp7Ef9oYTXrE=;
 b=Mo/n+eroU03jDSD8UaNrZ8ZQGzIYtv9AvNXhQG1T5ukMQHZ1dASLfVADcpbKmZefkSP0UF
 Z5WjgIIINxJM9P1tYn4iQHQovtxc9TEsRoYVZjrZFf0+dnGinIf4QyB648cotITr5Fo0qg
 CMX+7ajaWZJ/7Jq/HiF1kBquJ5eMXSQ=
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=redhat.com
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (1024-bit key) header.d=redhat.com header.i=@redhat.com
 header.a=rsa-sha256 header.s=mimecast20190719 header.b=Mo/n+ero
Subject: Re: [Intel-wired-lan] [PATCH] igb: cope with large MAX_SKB_FRAGS.
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
Cc: netdev@vger.kernel.org, intel-wired-lan@lists.osuosl.org
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

Hi Jiri,

On Apr 23 13:26, Jiri Pirko wrote:
> Tue, Apr 23, 2024 at 12:24:46PM CEST, vinschen@redhat.com wrote:
> >From: Paolo Abeni <pabeni@redhat.com>
> >
> >Sabrina reports that the igb driver does not cope well with large
> >MAX_SKB_FRAG values: setting MAX_SKB_FRAG to 45 causes payload
> >corruption on TX.
> >
> >The root cause of the issue is that the driver does not take into
> >account properly the (possibly large) shared info size when selecting
> >the ring layout, and will try to fit two packets inside the same 4K
> >page even when the 1st fraglist will trump over the 2nd head.
> >
> >Address the issue forcing the driver to fit a single packet per page,
> >leaving there enough room to store the (currently) largest possible
> >skb_shared_info.
> >
> >Fixes: 3948b05950fd ("net: introduce a config option to tweak MAX_SKB_FRAG")
> >Reported-by: Jan Tluka <jtluka@redhat.com>
> >Reported-by: Jirka Hladky <jhladky@redhat.com>
> >Reported-by: Sabrina Dubroca <sd@queasysnail.net>
> >Tested-by: Sabrina Dubroca <sd@queasysnail.net>
> >Tested-by: Corinna Vinschen <vinschen@redhat.com>
> >Signed-off-by: Paolo Abeni <pabeni@redhat.com>
> >---
> > drivers/net/ethernet/intel/igb/igb_main.c | 1 +
> 
> Also, please use get_maintainer.pl script to get cclist.

done and done in v2 (for which I forgot the "in-reply-to" now, d'uh)

Thanks,
Corinna

