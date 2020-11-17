Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id B42EF2B6F4A
	for <lists+intel-wired-lan@lfdr.de>; Tue, 17 Nov 2020 20:49:58 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by hemlock.osuosl.org (Postfix) with ESMTP id DBFEB8708A;
	Tue, 17 Nov 2020 19:49:56 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id skjxnyAVlwwm; Tue, 17 Nov 2020 19:49:56 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by hemlock.osuosl.org (Postfix) with ESMTP id 587D9870A3;
	Tue, 17 Nov 2020 19:49:56 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id E257C1BF574
 for <intel-wired-lan@lists.osuosl.org>; Tue, 17 Nov 2020 19:49:54 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by silver.osuosl.org (Postfix) with ESMTP id B21A82035E
 for <intel-wired-lan@lists.osuosl.org>; Tue, 17 Nov 2020 19:49:54 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id ejBJWfpEA-9y for <intel-wired-lan@lists.osuosl.org>;
 Tue, 17 Nov 2020 19:49:54 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from us-smtp-delivery-124.mimecast.com
 (us-smtp-delivery-124.mimecast.com [216.205.24.124])
 by silver.osuosl.org (Postfix) with ESMTPS id D60E720020
 for <intel-wired-lan@lists.osuosl.org>; Tue, 17 Nov 2020 19:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
 s=mimecast20190719; t=1605642592;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:mime-version:mime-version:content-type:content-type:
 in-reply-to:in-reply-to:references:references;
 bh=Gw3E4N9Hb3B+L7R6xRkeoPN5sNRZ6UObVyv/hqFxbkA=;
 b=Xwwu/zkCCLrJFqGSQY1Uh0Muiz3gn/1QAEWE11b6x7KFus9ylqpsamFgECe9ZbIz+Y/a+b
 yPg7ASlHwaW2H1ydnre0pXuZ/nheP9vf3bHwo1DdfBKjVmmZZRyIZNDHmBM5tOjGDcHdTn
 5X5/uPGzq840IgCFqpRcOt2KmLWkiLg=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-137-vWn3VtfEOjC-WxiiNUhrBg-1; Tue, 17 Nov 2020 14:49:50 -0500
X-MC-Unique: vWn3VtfEOjC-WxiiNUhrBg-1
Received: from smtp.corp.redhat.com (int-mx04.intmail.prod.int.phx2.redhat.com
 [10.5.11.14])
 (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
 (No client certificate requested)
 by mimecast-mx01.redhat.com (Postfix) with ESMTPS id 7BB08186DD2B;
 Tue, 17 Nov 2020 19:49:48 +0000 (UTC)
Received: from calimero.vinschen.de (ovpn-114-159.ams2.redhat.com
 [10.36.114.159])
 by smtp.corp.redhat.com (Postfix) with ESMTPS id 4AE225D9CD;
 Tue, 17 Nov 2020 19:49:48 +0000 (UTC)
Received: by calimero.vinschen.de (Postfix, from userid 500)
 id C291CA80920; Tue, 17 Nov 2020 20:49:46 +0100 (CET)
Date: Tue, 17 Nov 2020 20:49:46 +0100
From: Corinna Vinschen <vinschen@redhat.com>
To: intel-wired-lan@lists.osuosl.org, netdev@vger.kernel.org
Message-ID: <20201117194946.GH41926@calimero.vinschen.de>
Mail-Followup-To: intel-wired-lan@lists.osuosl.org, netdev@vger.kernel.org
References: <20201117194629.178360-1-vinschen@redhat.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20201117194629.178360-1-vinschen@redhat.com>
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.14
Subject: Re: [Intel-wired-lan] [RHEL8.4 PATCH] igc: fix link speed
 advertising
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

On Nov 17 20:46, Corinna Vinschen wrote:
> Link speed advertising in igc has two problems:

Sorry for the RHEL tag in the subject, I'll resend the patch without
this.


Corinna

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
