Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
	by mail.lfdr.de (Postfix) with ESMTPS id 45660701B15
	for <lists+intel-wired-lan@lfdr.de>; Sun, 14 May 2023 03:45:51 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id AB0A661509;
	Sun, 14 May 2023 01:45:47 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org AB0A661509
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1684028747;
	bh=uYAMatYlBsCS4mR5b38QqJzkAZugieJH0TIIwVjkuJ0=;
	h=Date:From:To:In-Reply-To:References:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=0sLnPFd779cvEp0E9r/qzOqeTQHNw/sWJED8+mJnDhZ93JxfCBuMbE4YPZWt1/UZF
	 MiSYbvGOvuoPF/Eahx+XhB/kGfHQkWIFk+tkxH1z2ZAKfWXGSmFjpKNG0p2kw6UdrZ
	 7xgYf/MU2UXo1SFxvFt9pyiLCA6oCWSAFlHB5sGKMPZJhngHlfW5RmY8znlinlGVkX
	 zLcLFTVxbpASiCK3BUccBootMz2+HA9FjzcaCgCpabeo73rnUWyaBPwRQ9CczN8hv5
	 pdR9NUOalmy5UkJRUwFkNPJOZwXW9z7F33BHCceLsFSExqG5nr46guM/+0H6xWtFm8
	 JE2AcMo3urSew==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id KGJnUzXydLEx; Sun, 14 May 2023 01:45:47 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id 9978161508;
	Sun, 14 May 2023 01:45:46 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 9978161508
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 437071BF5AD
 for <intel-wired-lan@lists.osuosl.org>; Sun, 14 May 2023 01:45:41 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 1A33E820E7
 for <intel-wired-lan@lists.osuosl.org>; Sun, 14 May 2023 01:45:41 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 1A33E820E7
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 6c7lOqcT032s for <intel-wired-lan@lists.osuosl.org>;
 Sun, 14 May 2023 01:45:39 +0000 (UTC)
X-Greylist: whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 3893782102
Received: from mail-pf1-x42a.google.com (mail-pf1-x42a.google.com
 [IPv6:2607:f8b0:4864:20::42a])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 3893782102
 for <intel-wired-lan@lists.osuosl.org>; Sun, 14 May 2023 01:45:39 +0000 (UTC)
Received: by mail-pf1-x42a.google.com with SMTP id
 d2e1a72fcca58-644d9bf05b7so6256576b3a.3
 for <intel-wired-lan@lists.osuosl.org>; Sat, 13 May 2023 18:45:39 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20221208; t=1684028738; x=1686620738;
 h=content-transfer-encoding:mime-version:references:in-reply-to
 :message-id:subject:cc:to:from:date:x-gm-message-state:from:to:cc
 :subject:date:message-id:reply-to;
 bh=da/1cOdwaRSaeRG4fR4u7h5w1C0269b/OMaCy4P4jEw=;
 b=A9cWxnAQ81fg2GiaWw6uIKvDNaQl9Xe+hxEKj3u+jjhMORuAKEdLNI29drK+nq5km0
 fuxVoOa19eEXPDiZKMqucagbRxGgNz5+DlFsidyK0Q29F6ulenBfLkBq8+nsdzJAusVf
 H8bW9xqeHDr7brH6jWQsF+plHfeGE24r3UXcQDp38PL1vahOXHPIFhI/fg73Y6xHevXz
 Y679iA+RD5Oa3uKnGR3cxDd3YSlQyHb2omvG8nuve/TXVvYN8q0qukjIeVh5tt6NSPEa
 oYOywmBP2qV05O5aeokwwDeM6JtKKxBb0Rsmnp8ozQ6vPoxnChyFHfEFhtCta5Xlqaiv
 iTsA==
X-Gm-Message-State: AC+VfDxGmxNdwiY+SJETrBl3EAUIdI7gJOQ/4MwIwXBpVdsuux91U2BW
 cg5wGfa9cM77WrAUJ314hGiX7A==
X-Google-Smtp-Source: ACHHUZ60AF1WAuOlqQS4R6g7FvSMJgcaiVNwGmF6Szu0Go73IzuOhXUtvJkap88ioDYIYMrXfcmXdw==
X-Received: by 2002:a05:6a00:158b:b0:64a:f730:1552 with SMTP id
 u11-20020a056a00158b00b0064af7301552mr6798178pfk.19.1684028738480; 
 Sat, 13 May 2023 18:45:38 -0700 (PDT)
Received: from hermes.local (204-195-120-218.wavecable.com. [204.195.120.218])
 by smtp.gmail.com with ESMTPSA id
 b20-20020aa78714000000b0062dbafced27sm7317314pfo.27.2023.05.13.18.45.37
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Sat, 13 May 2023 18:45:38 -0700 (PDT)
Date: Sat, 13 May 2023 18:45:35 -0700
From: Stephen Hemminger <stephen@networkplumber.org>
To: Emil Tantilov <emil.s.tantilov@intel.com>
Message-ID: <20230513184535.1a07c5b3@hermes.local>
In-Reply-To: <20230513225710.3898-3-emil.s.tantilov@intel.com>
References: <20230513225710.3898-1-emil.s.tantilov@intel.com>
 <20230513225710.3898-3-emil.s.tantilov@intel.com>
MIME-Version: 1.0
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=networkplumber-org.20221208.gappssmtp.com; s=20221208; t=1684028738;
 x=1686620738; 
 h=content-transfer-encoding:mime-version:references:in-reply-to
 :message-id:subject:cc:to:from:date:from:to:cc:subject:date
 :message-id:reply-to;
 bh=da/1cOdwaRSaeRG4fR4u7h5w1C0269b/OMaCy4P4jEw=;
 b=PYg/BcxXE53HvZqSfC598oOmHMU8gu+3RVRHZfcB4c5WW30YazruIg/XlB/YDnZwPR
 aSzT3fipny6IQulv+szXXsR5KZVZPYQYwSbNkkFto2hbV+qq3OHdQBYrXZdeMTEaHcrX
 C+gf3MO809pe9rjE2TfmJHQVGEiJmArGhleZmsyV2NuZyOFI7H7uKkXWg/UU7Fc9+IF2
 4qo3bqdg4EEl1hvYLqki9Mkyn9RsYGaY41+zu/HGZjIVnFA1vbMy0dUZ+MB0IegORo87
 SCsjof4p5tMO4uKi6aHjNBzs+xw9XB+BpBcS6d4NhFfpyN/RZAo+ieucHYWTEcBMh3QA
 OtzA==
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key) header.d=networkplumber-org.20221208.gappssmtp.com
 header.i=@networkplumber-org.20221208.gappssmtp.com header.a=rsa-sha256
 header.s=20221208 header.b=PYg/BcxX
Subject: Re: [Intel-wired-lan] [PATCH iwl-next v5 02/15] idpf: add module
 register and probe functionality
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
Cc: willemb@google.com, pabeni@redhat.com,
 Shailendra Bhatnagar <shailendra.bhatnagar@intel.com>, leon@kernel.org,
 simon.horman@corigine.com, jesse.brandeburg@intel.com, edumazet@google.com,
 netdev@vger.kernel.org, intel-wired-lan@lists.osuosl.org, kuba@kernel.org,
 anthony.l.nguyen@intel.com, Phani Burra <phani.r.burra@intel.com>,
 decot@google.com, davem@davemloft.net, shannon.nelson@amd.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

On Sat, 13 May 2023 15:56:57 -0700
Emil Tantilov <emil.s.tantilov@intel.com> wrote:

> +struct idpf_hw {
> +	void __iomem *hw_addr;
> +	resource_size_t hw_addr_len;
> +
> +	void *back;
> +};

It is safer to use a typed pointer rather than untyped (void *) for
the back pointer. This could prevent bugs.
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
