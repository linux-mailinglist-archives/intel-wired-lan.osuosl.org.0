Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
	by mail.lfdr.de (Postfix) with ESMTPS id 0C242507037
	for <lists+intel-wired-lan@lfdr.de>; Tue, 19 Apr 2022 16:23:18 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 8A5714194E;
	Tue, 19 Apr 2022 14:23:16 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id BJBLR6ePx36w; Tue, 19 Apr 2022 14:23:15 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id 662D241935;
	Tue, 19 Apr 2022 14:23:15 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id B23B01BF319
 for <intel-wired-lan@lists.osuosl.org>; Tue, 19 Apr 2022 14:23:10 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id AD44361305
 for <intel-wired-lan@lists.osuosl.org>; Tue, 19 Apr 2022 14:23:10 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Authentication-Results: smtp3.osuosl.org (amavisd-new);
 dkim=pass (1024-bit key) header.d=redhat.com
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id LgZwe9-D_Wrz for <intel-wired-lan@lists.osuosl.org>;
 Tue, 19 Apr 2022 14:23:10 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
Received: from us-smtp-delivery-124.mimecast.com
 (us-smtp-delivery-124.mimecast.com [170.10.129.124])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 04DDC61301
 for <intel-wired-lan@lists.osuosl.org>; Tue, 19 Apr 2022 14:23:09 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
 s=mimecast20190719; t=1650378188;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=6dg830iBfEr5I+C1yC730bVzeRQr31mDv92ikL2x34U=;
 b=LYPHkITth95YnmabrYNMGtR/ZWHy9oCARabcG6BTG5AEj9P+VTQ6vNVpUnamXgPsOtyZvc
 qPQP21w2h2QUmyt5QaniEDLjMtbD7pRl5b/j1zg0b4132YXSHf8xOkudnrl/hzHNrI6IsT
 6B1tQ4QocaYHjLj3VaayRa11DcxDd80=
Received: from mimecast-mx02.redhat.com (mimecast-mx02.redhat.com
 [66.187.233.88]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 us-mta-225-K-9C8fr3NselcOhsA6WL1Q-1; Tue, 19 Apr 2022 10:23:05 -0400
X-MC-Unique: K-9C8fr3NselcOhsA6WL1Q-1
Received: from smtp.corp.redhat.com (int-mx07.intmail.prod.int.rdu2.redhat.com
 [10.11.54.7])
 (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
 (No client certificate requested)
 by mimecast-mx02.redhat.com (Postfix) with ESMTPS id 2E2BC86B8A3;
 Tue, 19 Apr 2022 14:23:05 +0000 (UTC)
Received: from ceranb (unknown [10.40.194.169])
 by smtp.corp.redhat.com (Postfix) with ESMTP id 71E941400C2D;
 Tue, 19 Apr 2022 14:23:03 +0000 (UTC)
Date: Tue, 19 Apr 2022 16:23:02 +0200
From: Ivan Vecera <ivecera@redhat.com>
To: Tony Nguyen <anthony.l.nguyen@intel.com>
Message-ID: <20220419162302.60378ede@ceranb>
In-Reply-To: <607248b2-bfb2-08a2-3d17-67c5c28840fc@intel.com>
References: <20220413072259.3189386-1-ivecera@redhat.com>
 <YlldFriBVkKEgbBs@boxer> <YlldsfrRJURXpp5d@boxer>
 <248da3d7-cb00-14b6-12f0-6bb9fda6d532@intel.com>
 <20220416133043.08b4ee74@ceranb>
 <607248b2-bfb2-08a2-3d17-67c5c28840fc@intel.com>
MIME-Version: 1.0
X-Scanned-By: MIMEDefang 2.85 on 10.11.54.7
Subject: Re: [Intel-wired-lan] [PATCH net] ice: Protect vf_state check by
 cfg_lock in ice_vc_process_vf_msg()
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
Cc: Fei Liu <feliu@redhat.com>, netdev@vger.kernel.org, mschmidt@redhat.com,
 Brett
 Creeley <brett@pensando.io>, open list <linux-kernel@vger.kernel.org>,
 "moderated list:INTEL ETHERNET DRIVERS" <intel-wired-lan@lists.osuosl.org>,
 Jakub Kicinski <kuba@kernel.org>, Paolo Abeni <pabeni@redhat.com>, "David
 S. Miller" <davem@davemloft.net>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

On Mon, 18 Apr 2022 11:10:30 -0700
Tony Nguyen <anthony.l.nguyen@intel.com> wrote:

> > If you want to leave the code as is and remove this from the patch
> > let me know and I will send v2.  
> 
> The change itself looks ok to me, but for net patches, we should fix the 
> issue without introducing other changes. A v2 without this change would 
> be great; feel free to submit this change to -next after I've applied 
> the v2 for this patch.
> 
> Thanks,
> 
> Tony
Agree, sending v2.

Thanks,
Ivan

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
