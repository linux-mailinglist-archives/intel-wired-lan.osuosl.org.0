Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 6E4BD777F83
	for <lists+intel-wired-lan@lfdr.de>; Thu, 10 Aug 2023 19:47:41 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id EE36F41DB8;
	Thu, 10 Aug 2023 17:47:39 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org EE36F41DB8
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1691689660;
	bh=bRPQYJkj5MQYAKkEmSJ/9MpcHGMrk9+ocq6T/hBnHTc=;
	h=Date:From:To:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=JuRDYUe8ipSk8qtlW8ZGgkNuy9M78xBqkz4mSbZQK4xPGriPeRBqZtVEtoIjAUSI8
	 ZKp1ztvPuCIvX+I2uvdiWjKOAmi1AKArqfCd8Vc92Tkn91CkXIwiqfQA6TdGqlgmFY
	 MQFUlyHU5137Lu4vcssYc8z0picnteD6q9W7SHB4J5y457d6UzIyKupatOeVttclk4
	 jU8rWd429W5+bWYbY34+YlYNzqQvzIRPgWWyYlvzIiwvQY6dvenQcgwtJOVER3VTi8
	 uM5muLuIDE7nAXS+LL62zFIXXRj9w/6vshZDUqPaCPRvb2JCQ2Kxp0E9m382mpEwmK
	 4hUK7qBb5Hf0g==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id fW1mn_MhSxKJ; Thu, 10 Aug 2023 17:47:39 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id 870754091A;
	Thu, 10 Aug 2023 17:47:38 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 870754091A
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id E7AA01BF4D6
 for <intel-wired-lan@lists.osuosl.org>; Thu, 10 Aug 2023 17:34:09 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id CC2A640298
 for <intel-wired-lan@lists.osuosl.org>; Thu, 10 Aug 2023 17:34:09 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org CC2A640298
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id FhMICqHipiFJ for <intel-wired-lan@lists.osuosl.org>;
 Thu, 10 Aug 2023 17:34:08 +0000 (UTC)
Received: from mail-il1-x136.google.com (mail-il1-x136.google.com
 [IPv6:2607:f8b0:4864:20::136])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 82288400DC
 for <intel-wired-lan@lists.osuosl.org>; Thu, 10 Aug 2023 17:34:08 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 82288400DC
Received: by mail-il1-x136.google.com with SMTP id
 e9e14a558f8ab-3490cce329bso2997385ab.0
 for <intel-wired-lan@lists.osuosl.org>; Thu, 10 Aug 2023 10:34:08 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20221208; t=1691688847; x=1692293647;
 h=in-reply-to:content-disposition:mime-version:references:message-id
 :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
 :message-id:reply-to;
 bh=GdV4iR1xxtboZs5FQPuJUZtXcGLHtIDsoRCRiJm05c4=;
 b=ako1Mq+YpgMui1aK+rGjPcKMop2hRSuROMqhkNrU6YsDAhjurq0M10H8Mir7/GE71r
 KgPiZf7xJ5ToUk6fmMGwCh5BkY/RBKogP6dFvCoMRNMgkmUMY6vZP5N7j8Mw6e6Dl0U0
 VzwK9EcwtiL7t8U1DOKV6UhhkQinHXvMDilQ7Auy0gdXCJ7hoLpXJjbeF5aEPrCqrBxE
 Lg7EajDmdOcmoLRndMW86WUHV9vq4S1DWPyjP3rF/GSkEYDF124lvDUo0fUlZPsF3nEa
 bHSqkOZNDC1eDNfTasHk/3C1pb44XLP44zGNkv5oQx4irnTn0JTTdTm65IVLnv3ikRNB
 HiCQ==
X-Gm-Message-State: AOJu0YzkB8UG4Cp+qKvuBOAFNeMV6mbwTwW7EMKV9bWb4viJq5Qj1JKm
 sLDCCG72oIqoT7oyl87xgq04xQ==
X-Google-Smtp-Source: AGHT+IFjuDr680+2jafpw07ddfS/d3QHLVYJH7X3GvqWM5wSrbwFXF5hRN0rsbXDvNUnU1YujztEDw==
X-Received: by 2002:a05:6e02:1baf:b0:349:46fa:3844 with SMTP id
 n15-20020a056e021baf00b0034946fa3844mr2889307ili.3.1691688847549; 
 Thu, 10 Aug 2023 10:34:07 -0700 (PDT)
Received: from google.com (161.74.123.34.bc.googleusercontent.com.
 [34.123.74.161]) by smtp.gmail.com with ESMTPSA id
 l17-20020a92d8d1000000b00345d2845c42sm566851ilo.57.2023.08.10.10.34.06
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 10 Aug 2023 10:34:06 -0700 (PDT)
Date: Thu, 10 Aug 2023 17:34:04 +0000
From: Justin Stitt <justinstitt@google.com>
To: "Gustavo A. R. Silva" <gustavoars@kernel.org>
Message-ID: <20230810173404.jjuvqo5tv57en7pg@google.com>
References: <cover.1690938732.git.gustavoars@kernel.org>
 <52da391229a45fe3dbd5c43167cdb0701a17a361.1690938732.git.gustavoars@kernel.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <52da391229a45fe3dbd5c43167cdb0701a17a361.1690938732.git.gustavoars@kernel.org>
X-Mailman-Approved-At: Thu, 10 Aug 2023 17:47:33 +0000
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=google.com; s=20221208; t=1691688847; x=1692293647;
 h=in-reply-to:content-disposition:mime-version:references:message-id
 :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
 bh=GdV4iR1xxtboZs5FQPuJUZtXcGLHtIDsoRCRiJm05c4=;
 b=f49m7e0fTpMvMzTJELh+6sHJ1ejSFDxI40Hzkiwl3GIxcq/hxl/PROqKNx//p59fGK
 pB6pv72ip3SU34UFbF4JTU1fUHt+t/ecMn+3dXUwoPjoTg+hhoNRqsE+q+F9PzLsOWih
 Eug9n5HfoEAkeL3oP9HcAWidpQzyXF3r3BjPr1kJtYmDv9gJXfZYNpJ69K4NBlV26aTb
 47DUVLNEHv9xIzbXdB7wZzHLYiz2AwWEYlB6BL3hiBmZbHckPxQo4gZG6oYYulEFDQfz
 UIIzRB88jqmCOW7O4bx64FM7jd8t3u6dYQ1HRCNl2FCf+wOJHkdrHYp+O0bGDjrAFUEf
 Of3w==
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key) header.d=google.com header.i=@google.com
 header.a=rsa-sha256 header.s=20221208 header.b=f49m7e0f
Subject: Re: [Intel-wired-lan] [PATCH 2/4][next] i40e: Replace one-element
 array with flex-array member in struct i40e_profile_segment
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
 Tony Nguyen <anthony.l.nguyen@intel.com>, linux-hardening@vger.kernel.org,
 intel-wired-lan@lists.osuosl.org, Jakub Kicinski <kuba@kernel.org>,
 Paolo Abeni <pabeni@redhat.com>, "David S. Miller" <davem@davemloft.net>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

On Tue, Aug 01, 2023 at 11:05:59PM -0600, Gustavo A. R. Silva wrote:
> One-element and zero-length arrays are deprecated. So, replace
> one-element array in struct i40e_profile_segment with flexible-array
> member.
>
> This results in no differences in binary output.
>
> Link: https://github.com/KSPP/linux/issues/335
> Signed-off-by: Gustavo A. R. Silva <gustavoars@kernel.org>
> ---
>  drivers/net/ethernet/intel/i40e/i40e_type.h | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)
Tested-by: Justin Stitt <justinstitt@google.com>

>
> diff --git a/drivers/net/ethernet/intel/i40e/i40e_type.h b/drivers/net/ethernet/intel/i40e/i40e_type.h
> index c3d5fe12059a..f7a984304b65 100644
> --- a/drivers/net/ethernet/intel/i40e/i40e_type.h
> +++ b/drivers/net/ethernet/intel/i40e/i40e_type.h
> @@ -1487,7 +1487,7 @@ struct i40e_profile_segment {
>  	struct i40e_ddp_version version;
>  	char name[I40E_DDP_NAME_SIZE];
>  	u32 device_table_count;
> -	struct i40e_device_id_entry device_table[1];
> +	struct i40e_device_id_entry device_table[];
>  };
>
>  struct i40e_section_table {
> --
> 2.34.1
>
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
