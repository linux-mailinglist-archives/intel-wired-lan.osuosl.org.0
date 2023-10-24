Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
	by mail.lfdr.de (Postfix) with ESMTPS id AEE667D5088
	for <lists+intel-wired-lan@lfdr.de>; Tue, 24 Oct 2023 15:00:44 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 409D383F33;
	Tue, 24 Oct 2023 13:00:43 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 409D383F33
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1698152443;
	bh=KxQkHwhIgA4gnTK6Ruks4lSozeDbz6q0YLdhn0YGpos=;
	h=Date:From:To:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=zAp8JWnfrtnp8VOCdNfjdV/qVvAeZIWwmkXH3GGuP0JBgVzPTGEzWEWSKukvmEmk7
	 Z3O8kzhXWnNZCTzIajXl14KQYErEZeNqmvcS07gWWhOAPGw1QUJ0QmlV3VvGgW21nw
	 YTecy3EFACXHVb/0cmfMLAHyOrDO8AA+08jhe/OEwgFGDMg60JNrU5vFZ8PhqlVdzG
	 csOqQRpZoQEbi2m8J3Csfmh3c1jlvCT1ne+XldkeaidQNl7QnrYcB3fFPtZPxS+Bu+
	 ZWOt82tgo1TQTyCUc50OZe0lYs/DNGGsk3OsB7XfusGLUcEf9IJyiX38hdOxdGnIQ+
	 ocW84xf9J/Z7w==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
	by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id G7T3pRg7Aw-i; Tue, 24 Oct 2023 13:00:42 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id 1CE8083F2C;
	Tue, 24 Oct 2023 13:00:42 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 1CE8083F2C
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 0EDDB1BF38E
 for <intel-wired-lan@lists.osuosl.org>; Tue, 24 Oct 2023 13:00:37 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id DA96D6FC0D
 for <intel-wired-lan@lists.osuosl.org>; Tue, 24 Oct 2023 13:00:36 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org DA96D6FC0D
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id VZt7lXRUJbUB for <intel-wired-lan@lists.osuosl.org>;
 Tue, 24 Oct 2023 13:00:35 +0000 (UTC)
Received: from mail-ed1-x532.google.com (mail-ed1-x532.google.com
 [IPv6:2a00:1450:4864:20::532])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 628376FC0C
 for <intel-wired-lan@lists.osuosl.org>; Tue, 24 Oct 2023 13:00:34 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 628376FC0C
Received: by mail-ed1-x532.google.com with SMTP id
 4fb4d7f45d1cf-53d9b94731aso6973173a12.1
 for <intel-wired-lan@lists.osuosl.org>; Tue, 24 Oct 2023 06:00:34 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1698152432; x=1698757232;
 h=in-reply-to:content-disposition:mime-version:references:message-id
 :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
 :message-id:reply-to;
 bh=ZWgZj0jWXyKIUpIqseNDFQ+Z3Ajt56Y9J6kThz0DfLU=;
 b=MOWpWX18OJFhKp5Uvn7e7N7XweL/Ib9YJCbVh3djgeP0q5STSDy8fKpWZlczLDTgGr
 0AdGEog1llUEEMHoncVLK8l8tDI+0Aw+5W1Tv8KIU7Y4iUfqurmfpfhTElOH1Mour1Ld
 8+9MQW3Nv12GVqbxXQgIskGzK+jG/hBeUcmcrHUFnO0rZlDzqEPyuOTXwy5QsO67Um5x
 s7mKHYHeaKmB2TwExhyHNdB8at1otfmbcyirggmN2b3yy1jEKWBxah2v4uD2CFwT8VyE
 1+MScu1GUVsnFsINOG5Fy5y+K8o/fBekrLBhkLfkRebtIcUhWs7jCm9N61QxOU3nfrRk
 7PMA==
X-Gm-Message-State: AOJu0Yyf9jJ2OLbjpu40d6Y+VA9vn60GoLxwgPzzzX38P7GQKLzW/fan
 AEcAVAsyLpjVK0465YjrsXJj4w==
X-Google-Smtp-Source: AGHT+IEzcpYTuCTOHF/4/6Ur1ISFMPTfgKZaV6/zztDjAlr47wbdwfa+ojve+Wi/F7riNzmSUNX+5g==
X-Received: by 2002:a50:d603:0:b0:53e:6624:5aeb with SMTP id
 x3-20020a50d603000000b0053e66245aebmr9243046edi.11.1698152432557; 
 Tue, 24 Oct 2023 06:00:32 -0700 (PDT)
Received: from localhost (host-213-179-129-39.customer.m-online.net.
 [213.179.129.39]) by smtp.gmail.com with ESMTPSA id
 h28-20020a50cddc000000b0053e589016a7sm7980698edj.16.2023.10.24.06.00.31
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 24 Oct 2023 06:00:31 -0700 (PDT)
Date: Tue, 24 Oct 2023 15:00:30 +0200
From: Jiri Pirko <jiri@resnulli.us>
To: Ivan Vecera <ivecera@redhat.com>
Message-ID: <ZTe/7nfMmS+6KhrE@nanopsycho>
References: <20231024125109.844045-1-ivecera@redhat.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20231024125109.844045-1-ivecera@redhat.com>
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=resnulli-us.20230601.gappssmtp.com; s=20230601; t=1698152432; x=1698757232;
 darn=lists.osuosl.org; 
 h=in-reply-to:content-disposition:mime-version:references:message-id
 :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
 bh=ZWgZj0jWXyKIUpIqseNDFQ+Z3Ajt56Y9J6kThz0DfLU=;
 b=s7ShErmWnPaFNRSRw6GFBjVDhKglUbk96eso8azBSAc9GSWt9j6snEWCtB+XZxYTQo
 uB2x24vxzgmUnRLSMeZoaoH31RVGK5N3DUWPdXz1qZWkbMfNqDPmKBJfQToR/khaYCEm
 ANHIVoZ/WqqjpkdpRxvVsw8+M/jFV70IxAGaC9YtHqc1VV56jlIpyfcAHFtuCNcE2kam
 7C1N0PZjSF6qTqGoZaGYjO+95SEGyy3JYK16Cx71mvpZ/OLEZBcue2a90+HyJQDZiIoO
 wVZKa1ue4bGCjTAH3XgQPa/Mcnw8p4cZxzhkcOckQz/Qvvgi6uxmxeXN+6bLZJzgARvd
 05NQ==
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key) header.d=resnulli-us.20230601.gappssmtp.com
 header.i=@resnulli-us.20230601.gappssmtp.com header.a=rsa-sha256
 header.s=20230601 header.b=s7ShErmW
Subject: Re: [Intel-wired-lan] [PATCH net-next 1/2] i40e: Do not call
 devlink_port_type_clear()
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
Cc: netdev@vger.kernel.org, Jesse Brandeburg <jesse.brandeburg@intel.com>,
 linux-kernel@vger.kernel.org, Eric Dumazet <edumazet@google.com>,
 Tony Nguyen <anthony.l.nguyen@intel.com>, intel-wired-lan@lists.osuosl.org,
 Jacob Keller <jacob.e.keller@intel.com>, Jakub Kicinski <kuba@kernel.org>,
 Paolo Abeni <pabeni@redhat.com>, "David S. Miller" <davem@davemloft.net>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

Tue, Oct 24, 2023 at 02:51:08PM CEST, ivecera@redhat.com wrote:
>Do not call devlink_port_type_clear() prior devlink port unregister
>and let devlink core to take care about it.
>
>Reproducer:
>[root@host ~]# rmmod i40e
>[ 4539.964699] i40e 0000:02:00.0: devlink port type for port 0 cleared without a software interface reference, device type not supported by the kernel?
>[ 4540.319811] i40e 0000:02:00.1: devlink port type for port 1 cleared without a software interface reference, device type not supported by the kernel?
>
>Fixes: 9e479d64dc58 ("i40e: Add initial devlink support")
>Signed-off-by: Ivan Vecera <ivecera@redhat.com>

Ivan, I see that even if we have checks and warnings, it is not enough :)

Reviewed-by: Jiri Pirko <jiri@nvidia.com>

Btw, some (even brief) cover letter for patchset would be nice.
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
