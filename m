Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 97D069AB73A
	for <lists+intel-wired-lan@lfdr.de>; Tue, 22 Oct 2024 21:55:09 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id ED03740279;
	Tue, 22 Oct 2024 19:55:07 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id 27s92tAIAiWl; Tue, 22 Oct 2024 19:55:07 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org A225E40288
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1729626906;
	bh=GyiwtrdDNttqs/EmE5JLMsYdKcmXilzmJKF+u4QMJ3k=;
	h=Date:From:To:Cc:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=RqeTiMw47h6VX7taZFZ8A7cC3/im3gxHAbHO/w+vEpx8TPRPpXZNYGZ1CI2rbT61W
	 iMFi6PysW/1jOLr4sOCMdgi/HWuuTOjCADfWJg8CmPdL5hPrgDIYl8QsBERDwiSoCL
	 50RGynSchco+KSnCTG+3Kv7j1hePjTLPMFc+Jr4InJaS8vAFXY0gdOWBKicDwRiFOd
	 hkJoL+p/Gw9htM7CUArZJdEjVKQHUZe5rME663Fr41v1icAg+Q8qSzDyGIv9dtdkBq
	 DYFXMhQ0PXxobFSSE/vQkaRmsDXAx60h+AU4zpgilMOWrQsqh2gEE6IVDMDl2zdgy1
	 qN1yJcxFWViOA==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp4.osuosl.org (Postfix) with ESMTP id A225E40288;
	Tue, 22 Oct 2024 19:55:06 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
 by lists1.osuosl.org (Postfix) with ESMTP id AD1992072
 for <intel-wired-lan@lists.osuosl.org>; Tue, 22 Oct 2024 19:55:04 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 86FEB80E44
 for <intel-wired-lan@lists.osuosl.org>; Tue, 22 Oct 2024 19:55:04 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id UKroaV1jvQwq for <intel-wired-lan@lists.osuosl.org>;
 Tue, 22 Oct 2024 19:55:03 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom;
 client-ip=2607:f8b0:4864:20::42d; helo=mail-pf1-x42d.google.com;
 envelope-from=jdamato@fastly.com; receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp1.osuosl.org 52C2B80CE3
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 52C2B80CE3
Received: from mail-pf1-x42d.google.com (mail-pf1-x42d.google.com
 [IPv6:2607:f8b0:4864:20::42d])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 52C2B80CE3
 for <intel-wired-lan@lists.osuosl.org>; Tue, 22 Oct 2024 19:55:02 +0000 (UTC)
Received: by mail-pf1-x42d.google.com with SMTP id
 d2e1a72fcca58-71e4244fdc6so4292867b3a.0
 for <intel-wired-lan@lists.osuosl.org>; Tue, 22 Oct 2024 12:55:02 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1729626902; x=1730231702;
 h=in-reply-to:content-disposition:mime-version:references
 :mail-followup-to:message-id:subject:cc:to:from:date
 :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
 bh=GyiwtrdDNttqs/EmE5JLMsYdKcmXilzmJKF+u4QMJ3k=;
 b=CUgz/XnVC8Yy5H/kCAnNw9MCzm+vVb28XBEu5f9CRbxbRFdGvRQcXDrhcwoQt5m31g
 5Nh82JQbUFuGZdmDfncBDjt9EHdpX9ydCshIKykxSeAHyueQ8onBUbeuPp4h7a44zY+k
 RIF4D441r2eDT2KBrzKsRpM28A2H1k1xczO+ztNLbnsdgTrRS7lw7oZ6dGficEGtNX4O
 gTtBjX7W6CyNiKNWdFtozcTl7ne0q291R1bPMhUzWfNdqtWsFbDWIYln9u8oxbYJWNoU
 ob0Pw0IlhHqyLXLY7uHZWo5ze4yujfQx2Ww13f3SFoFKUNjo+7cJ8UmxdY/jp1VGE30i
 39QQ==
X-Forwarded-Encrypted: i=1;
 AJvYcCVSg/7FD8Gb0+gi9XKZpEOYm9JIOcywaKWLKTlv5tI8JWrWltbRUyLy8uVGG4l5oZ8tYaQm7EmbkwJqX1Cvssw=@lists.osuosl.org
X-Gm-Message-State: AOJu0YxWczcUEhKkFyRzzYU19E4pMOTi40fIda4UZ0FefRrE36oV/iux
 uCRfjPZ2N8yUtoqUmsdcfuLEYvZPjZvAEH+EzuiYiQCFVX+xAvaU9ez0+ql0vhQ=
X-Google-Smtp-Source: AGHT+IHOS5ZW9hfqejqTSv0uUEcgV0zqvj28qCLjL54AXpj9P6o2oacvHMmutTEyUR5UBufxHBYjiw==
X-Received: by 2002:a05:6a00:14cf:b0:71e:f4:dbc with SMTP id
 d2e1a72fcca58-72030cefe05mr409232b3a.25.1729626902274; 
 Tue, 22 Oct 2024 12:55:02 -0700 (PDT)
Received: from LQ3V64L9R2 (c-24-6-151-244.hsd1.ca.comcast.net. [24.6.151.244])
 by smtp.gmail.com with ESMTPSA id
 d2e1a72fcca58-71ec14159d4sm5085891b3a.210.2024.10.22.12.55.00
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 22 Oct 2024 12:55:01 -0700 (PDT)
Date: Tue, 22 Oct 2024 12:54:59 -0700
From: Joe Damato <jdamato@fastly.com>
To: Jacob Keller <jacob.e.keller@intel.com>
Cc: netdev@vger.kernel.org, kurt@linutronix.de, vinicius.gomes@intel.com,
 Tony Nguyen <anthony.l.nguyen@intel.com>,
 Przemek Kitszel <przemyslaw.kitszel@intel.com>,
 "David S. Miller" <davem@davemloft.net>,
 Eric Dumazet <edumazet@google.com>,
 Jakub Kicinski <kuba@kernel.org>, Paolo Abeni <pabeni@redhat.com>,
 "moderated list:INTEL ETHERNET DRIVERS" <intel-wired-lan@lists.osuosl.org>,
 open list <linux-kernel@vger.kernel.org>
Message-ID: <ZxgDE96t2iWXlI8o@LQ3V64L9R2>
Mail-Followup-To: Joe Damato <jdamato@fastly.com>,
 Jacob Keller <jacob.e.keller@intel.com>, netdev@vger.kernel.org,
 kurt@linutronix.de, vinicius.gomes@intel.com,
 Tony Nguyen <anthony.l.nguyen@intel.com>,
 Przemek Kitszel <przemyslaw.kitszel@intel.com>,
 "David S. Miller" <davem@davemloft.net>,
 Eric Dumazet <edumazet@google.com>,
 Jakub Kicinski <kuba@kernel.org>, Paolo Abeni <pabeni@redhat.com>,
 "moderated list:INTEL ETHERNET DRIVERS" <intel-wired-lan@lists.osuosl.org>,
 open list <linux-kernel@vger.kernel.org>
References: <20241018171343.314835-1-jdamato@fastly.com>
 <20241018171343.314835-2-jdamato@fastly.com>
 <d4eccf1a-3346-4446-a7ef-67e6905be487@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <d4eccf1a-3346-4446-a7ef-67e6905be487@intel.com>
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=fastly.com; s=google; t=1729626902; x=1730231702; darn=lists.osuosl.org;
 h=in-reply-to:content-disposition:mime-version:references
 :mail-followup-to:message-id:subject:cc:to:from:date:from:to:cc
 :subject:date:message-id:reply-to;
 bh=GyiwtrdDNttqs/EmE5JLMsYdKcmXilzmJKF+u4QMJ3k=;
 b=v4y1H7w9NYA6OXswTdn4fDZeJwBgcGW2KS0j1Pm0zgFM4FYbIGIUwQB2tsmPzGzl9g
 zx3XBGMbqBn2+kcJa/Euoz50ARaCIgGsvCd/gj0WfR1zfFKtWHYh7hG0qNm45aW+mHji
 PdBcxE46irzcYeZFWCJsh3TzmkWx3VDzmWj+Y=
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dmarc=pass (p=reject dis=none)
 header.from=fastly.com
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (1024-bit key,
 unprotected) header.d=fastly.com header.i=@fastly.com header.a=rsa-sha256
 header.s=google header.b=v4y1H7w9
Subject: Re: [Intel-wired-lan] [net-next v3 1/2] igc: Link IRQs to NAPI
 instances
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

On Tue, Oct 22, 2024 at 11:50:15AM -0700, Jacob Keller wrote:
> 
> 
> On 10/18/2024 10:13 AM, Joe Damato wrote:
> > Link IRQs to NAPI instances via netdev-genl API so that users can query
> > this information with netlink.
> > 
> > Compare the output of /proc/interrupts (noting that IRQ 144 is the
> > "other" IRQ which does not appear to have a NAPI instance):
> > 
> 
> Minor nit: 144 doesn't appear in either output, and it seems like this
> intended to indicate 128?
> 
> We think its a typo as the 144 appears in the data from the second commit.
> 
> I can make a note here to fix this typo when sending after we finish
> validation, if there's no other issues.

Yes, that's an error on my part. Sorry about that. I re-ran the
patch after updating it and amended the commit message, but forgot
to update '144' to be '128'.

Based on the e1000 bug report that came in [1], I'm going to take
another look at the igc patches to make sure the paths where the
queue mapping happens (in Patch 2) are all in paths where rtnl is
held as I attempted to do for e1000 [2].

[1]: https://lore.kernel.org/netdev/8cf62307-1965-46a0-a411-ff0080090ff9@yandex.ru/
[2]: https://lore.kernel.org/netdev/20241022172153.217890-1-jdamato@fastly.com/T/#u
