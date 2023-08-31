Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 4C51178EC53
	for <lists+intel-wired-lan@lfdr.de>; Thu, 31 Aug 2023 13:41:27 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 7A63482ED1;
	Thu, 31 Aug 2023 11:41:24 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 7A63482ED1
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1693482084;
	bh=HvOSJ6uvCVI/LooKyd6+twsI9sVjpvv9ZNHg/23ah0o=;
	h=From:To:Date:In-Reply-To:References:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=zrnYGahzG60NE4fJvPjjpp6ngcVdRyWqpNIN7bqCcTfwtHenjIgVQat7f7+XrDWj4
	 3ZFXtVgSstgMr3PGdN+S2/WRonIw3rCjMAAjDITiFkO2nSr5BL/2+l4IoiKLQqMlxa
	 CFBuUjj8zLMicb1u8XHWp5ypH/zWehiwQo9aI2KK5zJqoGXkcf76bXwyzc5sQAit7v
	 XlEcRcu6ikV8AnEG0sbZANrkjVNDsHFMG2bCAt+J1t+TrFaWlcNqjOieqXCTbWikCM
	 bB7WFcvMTt0oSwsGmckAFc0pnRNR9OryjOQ328kZ3uByfRQKxQ172mRi9oXOSlKH80
	 UVXg9HfxB4+Jw==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
	by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 0AK-BlgyGTXe; Thu, 31 Aug 2023 11:41:23 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id 839CB82BC3;
	Thu, 31 Aug 2023 11:41:23 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 839CB82BC3
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id E028C1BF3AE
 for <intel-wired-lan@lists.osuosl.org>; Thu, 31 Aug 2023 11:41:17 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id B737A401ED
 for <intel-wired-lan@lists.osuosl.org>; Thu, 31 Aug 2023 11:41:17 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org B737A401ED
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 3792ZccjP8dv for <intel-wired-lan@lists.osuosl.org>;
 Thu, 31 Aug 2023 11:41:16 +0000 (UTC)
Received: from us-smtp-delivery-124.mimecast.com
 (us-smtp-delivery-124.mimecast.com [170.10.133.124])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 3B8DA40125
 for <intel-wired-lan@lists.osuosl.org>; Thu, 31 Aug 2023 11:41:16 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 3B8DA40125
Received: from mail-ej1-f71.google.com (mail-ej1-f71.google.com
 [209.85.218.71]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.3, cipher=TLS_AES_256_GCM_SHA384) id
 us-mta-614-ZWRh9LEiM8yewOlT9VHnbw-1; Thu, 31 Aug 2023 07:41:13 -0400
X-MC-Unique: ZWRh9LEiM8yewOlT9VHnbw-1
Received: by mail-ej1-f71.google.com with SMTP id
 a640c23a62f3a-9a5c5f0364dso9475466b.0
 for <intel-wired-lan@lists.osuosl.org>; Thu, 31 Aug 2023 04:41:13 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20221208; t=1693482072; x=1694086872;
 h=mime-version:user-agent:content-transfer-encoding:references
 :in-reply-to:date:to:from:subject:message-id:x-gm-message-state:from
 :to:cc:subject:date:message-id:reply-to;
 bh=YnuQHzAIFGo0WZruZWqfRWGANCb/aDF+514/VQ3/nGA=;
 b=JydUo0M+eCZmi+Dp/sXm0LgUe1wpD1+ikIcjrHOoWLJG3bCUt1bxepKfiN7p1+0AVT
 rVfHzOs9tCWvDQQvaMHz4LS2nUN/o4A1D3F+bgqpH+R0hLq94RbT064a7WALL+Yqijaa
 JZ6LcwMxuZQdseSkLKFP6pbAZPO+eNQQSWTJssd86FxAYvvUu9Hdbqwb1eftXrVgxxFs
 KVYdkAeIvCcLf0jqf1ilOaFYMiOxszea6pP37NzYSrfKDBTVV8K5e1/zwaSQaRExr1cV
 ANPIsBv3w770VojGC0+LOyOPjQJxonAQV7Hxc1O/880DsDj9JQPjQ6w568+PxNPzj6nf
 KkOA==
X-Gm-Message-State: AOJu0YyDZ0IrPd7Y3B+tJopSUqikiPSKM+jBUYG2r8l0+MeO1kFpCe+A
 QUGBRzq+7Y8eIgfAevnAOtjdc59aHknJ1rkjB3iCBIZT9ptXkNvl4FuzPoT3DuC3VXMVdfCT83e
 0OMppJiEV+2bbhjSVskJJSPXm5xyi3Q==
X-Received: by 2002:a17:906:10dc:b0:9a5:9038:b1e1 with SMTP id
 v28-20020a17090610dc00b009a59038b1e1mr3985436ejv.2.1693482072714; 
 Thu, 31 Aug 2023 04:41:12 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IG5VY1nG5gFbZ/71OW0mNruZkepMA+ngQpuZnkU3OIgnWU2Inj+E0lnl6YIKRYaw2Zy6nAtwA==
X-Received: by 2002:a17:906:10dc:b0:9a5:9038:b1e1 with SMTP id
 v28-20020a17090610dc00b009a59038b1e1mr3985424ejv.2.1693482072370; 
 Thu, 31 Aug 2023 04:41:12 -0700 (PDT)
Received: from gerbillo.redhat.com (146-241-255-219.dyn.eolo.it.
 [146.241.255.219]) by smtp.gmail.com with ESMTPSA id
 p19-20020a17090635d300b0099c971ba285sm665123ejb.5.2023.08.31.04.41.11
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 31 Aug 2023 04:41:11 -0700 (PDT)
Message-ID: <b2dcff0db691a9b358c4f89cf7a5b65a5a7dc4c5.camel@redhat.com>
From: Paolo Abeni <pabeni@redhat.com>
To: Corinna Vinschen <vinschen@redhat.com>, Tony Nguyen
 <anthony.l.nguyen@intel.com>, jesse.brandeburg@intel.com, 
 intel-wired-lan@lists.osuosl.org, netdev@vger.kernel.org
Date: Thu, 31 Aug 2023 13:41:10 +0200
In-Reply-To: <20230831080916.588043-1-vinschen@redhat.com>
References: <20230831080916.588043-1-vinschen@redhat.com>
User-Agent: Evolution 3.46.4 (3.46.4-1.fc37)
MIME-Version: 1.0
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=redhat.com; 
 s=mimecast20190719; t=1693482075;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=YnuQHzAIFGo0WZruZWqfRWGANCb/aDF+514/VQ3/nGA=;
 b=X4O12gA9KSzdfT57lRjxtwfNRlZl+z0UhMjcOZ4Gm8eUhK/yDJ37y5G7imjB3shafUBedk
 LmI7VAq1q5eZRPXQQkEkWLk6tysFal0tbZDwXngpVo44a6xU0QW2MtG4RbvU3spMDJ+Z/F
 v4bhEYzwGP/5y4lgHkrYw0T5DCi+q0U=
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (1024-bit key) header.d=redhat.com header.i=@redhat.com
 header.a=rsa-sha256 header.s=mimecast20190719 header.b=X4O12gA9
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

On Thu, 2023-08-31 at 10:09 +0200, Corinna Vinschen wrote:
> Disable virtualization features on 82580 just as on i210/i211.
> This avoids that virt functions are acidentally called on 82850.
> 
> Signed-off-by: Corinna Vinschen <vinschen@redhat.com>

This looks like a fix to me?!? if so a suitable 'Fixes' tag should be
included.

Thanks!

Paolo

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
