Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 4677851724E
	for <lists+intel-wired-lan@lfdr.de>; Mon,  2 May 2022 17:14:31 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 908E082F4F;
	Mon,  2 May 2022 15:14:29 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
	by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id okSwo2HXDRy0; Mon,  2 May 2022 15:14:28 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id 949B282EAD;
	Mon,  2 May 2022 15:14:28 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 7DBDA1BF39E
 for <intel-wired-lan@lists.osuosl.org>; Mon,  2 May 2022 15:14:23 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 7947840A62
 for <intel-wired-lan@lists.osuosl.org>; Mon,  2 May 2022 15:14:23 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Authentication-Results: smtp2.osuosl.org (amavisd-new);
 dkim=pass (1024-bit key) header.d=redhat.com
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id W6Cav-kQo-NI for <intel-wired-lan@lists.osuosl.org>;
 Mon,  2 May 2022 15:14:22 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
Received: from us-smtp-delivery-124.mimecast.com
 (us-smtp-delivery-124.mimecast.com [170.10.129.124])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 9091440A35
 for <intel-wired-lan@lists.osuosl.org>; Mon,  2 May 2022 15:14:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
 s=mimecast20190719; t=1651504461;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding;
 bh=+wgCIoYjfiqmfx1J7S/1eLQrC9vPfn5v+3Iptng21UE=;
 b=IX2q2xGmZmI3nql3DYm/ZtZDkYp4NXwjE9xeXzycH6Go0r9NE2ZHIaYclsAgu3FU3NJDrF
 9TxcTH2cbVOWXRKM3thW3sZEwFs1nVdDE2uMVHxL6QDPGHLPDzaQJrwpzBFiuSB3bBYtmo
 uJqW7DILTnYt2J9CjVuNzLiLyzLMrr0=
Received: from mail-wm1-f72.google.com (mail-wm1-f72.google.com
 [209.85.128.72]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 us-mta-299-EU6tu93wNp2xXDmemuxqfw-1; Mon, 02 May 2022 11:14:19 -0400
X-MC-Unique: EU6tu93wNp2xXDmemuxqfw-1
Received: by mail-wm1-f72.google.com with SMTP id
 z23-20020a05600c221700b003942fd37764so3412241wml.8
 for <intel-wired-lan@lists.osuosl.org>; Mon, 02 May 2022 08:14:19 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:message-id:subject:from:to:cc:date:user-agent
 :mime-version:content-transfer-encoding;
 bh=+wgCIoYjfiqmfx1J7S/1eLQrC9vPfn5v+3Iptng21UE=;
 b=cA+cAhQAVOgqHY6FqWjRBkPyGYp5TlGx2EP3hjtLLRhEWvHEoD0by+rsSIWdQVdLoA
 5IfAe/UIgI66JjU9JkkJGy7UflX9TPafS6SVrTUqIssiviCPCQ4gWqHgvHUMc09ltzfA
 6wYwPIdLTFNHtnJETFCpjcBm1kBA3SE4McqCl9PwJSCSjmylxLearCgQyaG9Z9sSXa/Y
 b6cJiYf+7awZGLJikhI2G/s9FqNFL9wWp2XS1lwaJsjpWckxuvv3WIEGqoDowMK+DXLN
 Whj8+zzmDCBSIbz/1qZJ0jWXoVxWUJ+1pdacV/NWYxQ49tevoXKJ4UEd2ouUPkBnQTV0
 CZ3Q==
X-Gm-Message-State: AOAM530LZVC5E2Z0nGftv8pEIZmc/5k5cUb0MtMCsfaodHWJuY7HdxMt
 EJXnt4itpjxu4bTMRPyQuPK0Eh3R6Vg1rPKgvzD8FJ7swDc0CEUelI4pxx/c6jAqcxDuFc7+Ukx
 i47zabjMi0cLqM2K9zRG9aldRV7rKsg==
X-Received: by 2002:adf:f38a:0:b0:20a:bc71:fe3f with SMTP id
 m10-20020adff38a000000b0020abc71fe3fmr9459181wro.47.1651504458687; 
 Mon, 02 May 2022 08:14:18 -0700 (PDT)
X-Google-Smtp-Source: ABdhPJyGi6TqU+1v/QxsdW4g9Q9uvMvPuhhLH0aRk2vszpblzUDUMreN6HNNbvSO4wYD8wKpcz/rZw==
X-Received: by 2002:adf:f38a:0:b0:20a:bc71:fe3f with SMTP id
 m10-20020adff38a000000b0020abc71fe3fmr9459160wro.47.1651504458269; 
 Mon, 02 May 2022 08:14:18 -0700 (PDT)
Received: from gerbillo.redhat.com (146-241-115-66.dyn.eolo.it.
 [146.241.115.66]) by smtp.gmail.com with ESMTPSA id
 c2-20020adfc042000000b0020c5253d8e5sm7301631wrf.49.2022.05.02.08.14.17
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 02 May 2022 08:14:17 -0700 (PDT)
Message-ID: <a683810b6ef8135486fde3b4d3286332d70100f7.camel@redhat.com>
From: Paolo Abeni <pabeni@redhat.com>
To: "Nguyen, Anthony L" <anthony.l.nguyen@intel.com>
Date: Mon, 02 May 2022 17:14:16 +0200
User-Agent: Evolution 3.42.4 (3.42.4-2.fc35)
MIME-Version: 1.0
Authentication-Results: relay.mimecast.com;
 auth=pass smtp.auth=CUSA124A263 smtp.mailfrom=pabeni@redhat.com
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Subject: [Intel-wired-lan] question about intel wired patchwork
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
Cc: intel-wired-lan@lists.osuosl.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

Hello,

This patch:

https://patchwork.ozlabs.org/project/intel-wired-lan/patch/e36724d3cdfbedf9af1a2a7f47ebd60aa7932f83.1650978540.git.lorenzo@kernel.org/

is stuck in the 'Awaiting Upstream' status since a while. What does
that mean? In the netdev patchwork the same status for such patch would
mean that we expect it to go trough the intel wired driver tree, so
it's a little confusing to me.

What are the better options to move it forward?

Thanks!

Paolo

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
