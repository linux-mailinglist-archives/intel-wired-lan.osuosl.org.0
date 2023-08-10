Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [IPv6:2605:bc80:3010::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 23EC477826D
	for <lists+intel-wired-lan@lfdr.de>; Thu, 10 Aug 2023 22:54:45 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id B0CB040B6B;
	Thu, 10 Aug 2023 20:54:43 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org B0CB040B6B
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1691700883;
	bh=LpkwKq45V+8I6t33WSfUxhlo7MAATvKi0t5sXadk7zM=;
	h=Date:From:To:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=61CIjSUhm+Lm47YHMoU/pRNwX86nGCTeYxe6j9TqePtJCc1O/+VIZt/R1+mkIpLpy
	 HIzlSPvQgAhe47UQ029QP4e/EZnmlzp3xK2Dm2uOUOeQrHG4jdpUqjBb8LF/reHTy3
	 L6EL0IjbYrTZvhwDkBO4kTMHN/nxNXqTRKUyhrii8qecZyAvgXWk4p65ElRmMUPn/h
	 BjfVzooxJNzELpTv+7za/RhAaRXrKcszsZ0EovyEaHamvH0sbfmRnNBNZ3BaxvQ+00
	 tN01WVuYAFIh7yBZgGNMVBn1GGBJ7hwpGYZ7PX0x0f6JYIDTNb2X2+SFqyTja96tUR
	 3g18mmdCs5D/g==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id xnx7Iont1cig; Thu, 10 Aug 2023 20:54:43 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id 9F3294052B;
	Thu, 10 Aug 2023 20:54:42 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 9F3294052B
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id E2DFE1BF97F
 for <intel-wired-lan@lists.osuosl.org>; Thu, 10 Aug 2023 20:49:58 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id BA92283BFE
 for <intel-wired-lan@lists.osuosl.org>; Thu, 10 Aug 2023 20:49:58 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org BA92283BFE
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id Pw2xrTL6k2NK for <intel-wired-lan@lists.osuosl.org>;
 Thu, 10 Aug 2023 20:49:58 +0000 (UTC)
Received: from mail-il1-x136.google.com (mail-il1-x136.google.com
 [IPv6:2607:f8b0:4864:20::136])
 by smtp1.osuosl.org (Postfix) with ESMTPS id C4B5E83BC1
 for <intel-wired-lan@lists.osuosl.org>; Thu, 10 Aug 2023 20:49:57 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org C4B5E83BC1
Received: by mail-il1-x136.google.com with SMTP id
 e9e14a558f8ab-34992fd567bso2044765ab.1
 for <intel-wired-lan@lists.osuosl.org>; Thu, 10 Aug 2023 13:49:57 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20221208; t=1691700597; x=1692305397;
 h=in-reply-to:content-disposition:mime-version:references:message-id
 :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
 :message-id:reply-to;
 bh=IrPtI7WuVK/oaLBJhxp0over27m1houzlRFCqoHRsZI=;
 b=czmexxVqW6F6N0GgtyZ9PO9eI7fJMJkPLPB3GZz200VKHRpylznL4jG+BzySrrwqLf
 BpZqTfbwFJ8Y5mD3b7in3HK0nxgWO4mob6CtA5WQ6tbNjyQFXMy/p+1rubuNbTANlxmE
 5eChfejtaFJ+mSNKb77/RnzpKyxza580nlcBMunaOz7IkGGpwJLpHbyUYxKgC0R/QvvZ
 7pER6hS7W8GX9aNsMKg+btnESiGm/ZGWPWTF0kMoxgZ7NEp0HOeUwxfoRfsP1bekLMYv
 281uZuSBJusfrAIo1hWCr5X6fjyyk+xQbE1gXHD5aK6l5Ob/Sf7fBISakmfq83rgDhNX
 1JAw==
X-Gm-Message-State: AOJu0YwJzTgcbA1IptiPj7APPHwSIl661FtXGQGY0+EQXBmjWU6koXcz
 6Zn0CqwnS05ADeL5fLp0VMItmw==
X-Google-Smtp-Source: AGHT+IEwEFZIXKpAeifAuxh0Eqsxgobltmkf4dACqcHcGYNcVSpVavL7FAFg27OJnH28qQrTLzgHWA==
X-Received: by 2002:a92:c54f:0:b0:348:b07e:fdac with SMTP id
 a15-20020a92c54f000000b00348b07efdacmr51572ilj.3.1691700596858; 
 Thu, 10 Aug 2023 13:49:56 -0700 (PDT)
Received: from google.com (161.74.123.34.bc.googleusercontent.com.
 [34.123.74.161]) by smtp.gmail.com with ESMTPSA id
 u9-20020a92da89000000b003487840f1d3sm658566iln.50.2023.08.10.13.49.55
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 10 Aug 2023 13:49:56 -0700 (PDT)
Date: Thu, 10 Aug 2023 20:49:53 +0000
From: Justin Stitt <justinstitt@google.com>
To: "Gustavo A. R. Silva" <gustavoars@kernel.org>
Message-ID: <20230810204953.wwwvbl57m3cebf27@google.com>
References: <cover.1690938732.git.gustavoars@kernel.org>
 <52da391229a45fe3dbd5c43167cdb0701a17a361.1690938732.git.gustavoars@kernel.org>
 <20230810173404.jjuvqo5tv57en7pg@google.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20230810173404.jjuvqo5tv57en7pg@google.com>
X-Mailman-Approved-At: Thu, 10 Aug 2023 20:54:38 +0000
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=google.com; s=20221208; t=1691700597; x=1692305397;
 h=in-reply-to:content-disposition:mime-version:references:message-id
 :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
 bh=IrPtI7WuVK/oaLBJhxp0over27m1houzlRFCqoHRsZI=;
 b=FefyM5boM+iZbD5HCFP6q7YdNjfhM4Crf149F1xn2YjT84k7yzbFnUm4EO4WcJBcZ+
 aEq9gMUJrhGCPkZaVrruWI0GixWkHHRk0W1/MSLywlOf6fFJM1mBanu5xUpziUnJymb6
 wyMDdWSPzAnOugSUbmiwqmUPrwD+Vxc4coHCD6T4B3h9E7dP/vncsfUtROT2l1kYs4Bj
 HkVbnH6HdttJ4QgZB0j6943Pt0v6CrrXpVyV2ss+wRQ9mqjk5Vvo9SKj9Kok2GSWDeBT
 kPTFXzES0QKtjF2Jz0+naAIStbwstX0nqX+vIjBACvmYnlYxgerfm5rQEcA5u63Q2KVm
 qAZw==
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key) header.d=google.com header.i=@google.com
 header.a=rsa-sha256 header.s=20221208 header.b=FefyM5bo
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

On Thu, Aug 10, 2023 at 05:34:04PM +0000, Justin Stitt wrote:
> On Tue, Aug 01, 2023 at 11:05:59PM -0600, Gustavo A. R. Silva wrote:
> > One-element and zero-length arrays are deprecated. So, replace
> > one-element array in struct i40e_profile_segment with flexible-array
> > member.
> >
> > This results in no differences in binary output.
> >
> > Link: https://github.com/KSPP/linux/issues/335
> > Signed-off-by: Gustavo A. R. Silva <gustavoars@kernel.org>
> > ---
> >  drivers/net/ethernet/intel/i40e/i40e_type.h | 2 +-
> >  1 file changed, 1 insertion(+), 1 deletion(-)
> Tested-by: Justin Stitt <justinstitt@google.com>
Whoops, this should be:
Reviewed-by: Justin Stitt <justinstitt@google.com>

I did not test, I just verified there are no binary differences produced
by this patch.

>
> >
> > diff --git a/drivers/net/ethernet/intel/i40e/i40e_type.h b/drivers/net/ethernet/intel/i40e/i40e_type.h
> > index c3d5fe12059a..f7a984304b65 100644
> > --- a/drivers/net/ethernet/intel/i40e/i40e_type.h
> > +++ b/drivers/net/ethernet/intel/i40e/i40e_type.h
> > @@ -1487,7 +1487,7 @@ struct i40e_profile_segment {
> >  	struct i40e_ddp_version version;
> >  	char name[I40E_DDP_NAME_SIZE];
> >  	u32 device_table_count;
> > -	struct i40e_device_id_entry device_table[1];
> > +	struct i40e_device_id_entry device_table[];
> >  };
> >
> >  struct i40e_section_table {
> > --
> > 2.34.1
> >
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
