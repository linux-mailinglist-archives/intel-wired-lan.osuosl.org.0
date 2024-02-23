Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 10D4C8614E3
	for <lists+intel-wired-lan@lfdr.de>; Fri, 23 Feb 2024 15:56:12 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id 16D7C41CC5;
	Fri, 23 Feb 2024 14:56:10 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id G6MrCI2UxCVD; Fri, 23 Feb 2024 14:56:09 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.34; helo=ash.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 4B5F841CBC
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1708700169;
	bh=Cl2PRVxoOHwaufbv8aeGSSPQla1YMFofHDfJTsjOpTQ=;
	h=Date:To:References:From:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=9CGRfYeAJBBki13gKBCIozn+zGBP6W5ncDy30ulbp5LInsAINn6nuU5p06+//b4w4
	 K/oBzbm4etPDsPK4jkQbSMihkPAwYTP3Ah15Zsn0NBa/J8M1X6vDmOUoqLMhxb6wNb
	 ISu75VhOfW/rxbeLGt6yqYTz/CfCo5oKIE5fw+JBzdIMEyWp7Hs0GJo4texSt0v4oW
	 PMS1GBiMyfSSXsCh4buN2EgDSGCf9AHacSwPrVrtbmErIBSjWh4+YggVSRCx6AWXWB
	 JH7jpQugCohnMl1UNyWdlddN/wafJ4MbeLYbxvaiccVZB5MdD7hqygIQ8n9M+v7/2W
	 SEam9J8QTk4qA==
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id 4B5F841CBC;
	Fri, 23 Feb 2024 14:56:09 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 65AFC1BF3C3
 for <intel-wired-lan@lists.osuosl.org>; Fri, 23 Feb 2024 14:56:05 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 4F87B41CAB
 for <intel-wired-lan@lists.osuosl.org>; Fri, 23 Feb 2024 14:56:05 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id HjTX0izzca6M for <intel-wired-lan@lists.osuosl.org>;
 Fri, 23 Feb 2024 14:56:04 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom;
 client-ip=2a00:1450:4864:20::533; helo=mail-ed1-x533.google.com;
 envelope-from=christian.rohmann@inovex.de; receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp2.osuosl.org B924A40111
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org B924A40111
Received: from mail-ed1-x533.google.com (mail-ed1-x533.google.com
 [IPv6:2a00:1450:4864:20::533])
 by smtp2.osuosl.org (Postfix) with ESMTPS id B924A40111
 for <intel-wired-lan@lists.osuosl.org>; Fri, 23 Feb 2024 14:56:03 +0000 (UTC)
Received: by mail-ed1-x533.google.com with SMTP id
 4fb4d7f45d1cf-55a035669d5so1447310a12.2
 for <intel-wired-lan@lists.osuosl.org>; Fri, 23 Feb 2024 06:56:03 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1708700161; x=1709304961;
 h=in-reply-to:organization:autocrypt:from:references:cc:to
 :content-language:subject:user-agent:mime-version:date:message-id
 :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
 bh=Cl2PRVxoOHwaufbv8aeGSSPQla1YMFofHDfJTsjOpTQ=;
 b=MI8WpWOW8I6qzxNTwD5uKndFk+QCY+zje+6aIWxIpCr8ZW+wZ50kpdpkZRcaCCfwRs
 a/QJ2GJR882MVVOyAiZqvUQ719CasVcHcUthgeiqAkoEwGTU0CiqxHFCLcNtT2IRll6s
 ha9uDzqj9ophyUC8D9CFXEQj5MjUHUOwTWjp7oWE4FMgUT3Db0PdPgO8R399AP4+ps1u
 0HX/jy46pM621rvakksmGmXLBOIVB1fsG0y1wyb1BspyEKRNoN9aMdAOxfyVKqcWRHMN
 9F0ryDB+2Wif7YpeEc4IQO0GcS7O4JfNEUL2PpvU+zgjhLpLAdiz3/zSiiXgjsonr1yS
 mfRA==
X-Forwarded-Encrypted: i=1;
 AJvYcCUplHm/VIa4a1PSPHnmecq6Zl/Tc0PsTM31g9nbSTGGEZVYwWLAOesIMMnqJLL+5Z9AXfytIUocRfjXtjTAo/He71cZZk43OFCux6OwH2bqVw==
X-Gm-Message-State: AOJu0YwqKG7GTMSLrBRodI0pe2Mt8jVImpxdkflQtH812xgHD7A7rkQX
 XCvBgs9T/H6rpeOEZQv6JS/JZMQWldYWZxDcVobkRMt6tDrcyYPnGWtgL8UAXRU=
X-Google-Smtp-Source: AGHT+IGSp7vy0B3BkAhHVaQjKXrvZVqYivZmQzDMWC/gjR/90L/X03lZSt9QHg1LJXzDrGIvYtsNJw==
X-Received: by 2002:aa7:d747:0:b0:565:303:67a4 with SMTP id
 a7-20020aa7d747000000b00565030367a4mr47227eds.15.1708700161428; 
 Fri, 23 Feb 2024 06:56:01 -0800 (PST)
Received: from [10.100.10.83] ([57.133.65.178])
 by smtp.gmail.com with ESMTPSA id
 ds5-20020a0564021cc500b005624d90a07fsm6522411edb.15.2024.02.23.06.56.01
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Fri, 23 Feb 2024 06:56:01 -0800 (PST)
Content-Type: multipart/alternative;
 boundary="------------D0VnS0HyatDE1h0oa01Q03eC"
Message-ID: <aba3afd0-444d-4a18-bc78-8051f4ee82e8@inovex.de>
Date: Fri, 23 Feb 2024 15:56:00 +0100
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Content-Language: en-US
To: Przemek Kitszel <przemyslaw.kitszel@intel.com>,
 intel-wired-lan@lists.osuosl.org
References: <f38a6ca4-af05-48b1-a3e6-17ef2054e525@inovex.de>
 <7bbe621e-52cc-8111-bec7-70632900c3b0@intel.com>
 <e1b2f012-7e0a-4167-bfa9-026d49f1b45b@inovex.de>
 <1ec34cee-bfab-4dc8-81eb-9a9688b9a61e@inovex.de>
 <df3b33f3-8f78-4c94-854a-dd70a8b5fcd3@intel.com>
 <ae802f16-d425-4377-82f5-b72f8efac0de@inovex.de>
 <5ff11c63-d1db-4a8c-a496-99e17acc273f@inovex.de>
 <0ffd1e6a-35ff-4868-a15d-d0f12c5c9720@intel.com>
 <fdeefe2c-d91a-4b4f-9b1b-7f592394aab3@intel.com>
From: Christian Rohmann <christian.rohmann@inovex.de>
Autocrypt: addr=christian.rohmann@inovex.de; keydata=
 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
 jc3KKu3ujhgpmc6agjjBXsDdcwBnOPngItiyCrs=
Organization: inovex GmbH
In-Reply-To: <fdeefe2c-d91a-4b4f-9b1b-7f592394aab3@intel.com>
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=inovex.de; s=google; t=1708700161; x=1709304961; darn=lists.osuosl.org;
 h=in-reply-to:organization:autocrypt:from:references:cc:to
 :content-language:subject:user-agent:mime-version:date:message-id
 :from:to:cc:subject:date:message-id:reply-to;
 bh=Cl2PRVxoOHwaufbv8aeGSSPQla1YMFofHDfJTsjOpTQ=;
 b=IoWSdWSRXv1fbtOkLli7eqX4i2utRKw8bK/+WLQr0WcK+l6cLIukYCQA21un0kK2x6
 LsGAPjTyn0E1zRqEhIk1N+tmouctdxFam5irc3nt2HhJv19Lobq4sRLH1xUutxKpMlVK
 ADz5XmILABynf6+XptkepkplB1vk6kLmttPnWZH8riP8zUWM91MXe2yWXa7ldIhV+KRK
 tZKylMXdT48JYDZg5gJss1fpS1P+E8J8SUJn+OTbO5phEQKaOh+yjtTmAnfSLxtSGSnF
 ROQ5eDpcrMggPfLcWejTWngSxLmZezknmjXtXygyHOIVJ0JuTtw4Kw1yl1BwQ1R5XLyY
 aPLw==
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dmarc=pass (p=reject dis=none)
 header.from=inovex.de
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=inovex.de header.i=@inovex.de header.a=rsa-sha256
 header.s=google header.b=IoWSdWSR
Subject: Re: [Intel-wired-lan] Counter spikes in /proc/net/dev for
 E810-CQDA2 interfaces (ice driver) on kernel >=6.2
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
Cc: Jacob Keller <jacob.e.keller@intel.com>, leszek.pepiak@intel.com, "Czapnik,
 Lukasz" <lukasz.czapnik@intel.com>,
 Nebojsa Stevanovic <nebojsa.stevanovic@gcore.com>
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

This is a multi-part message in MIME format.
--------------D0VnS0HyatDE1h0oa01Q03eC
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit

On 23.02.24 14:58, Przemek Kitszel wrote:
>> [Ben changes]
>> By looking at the commit range, this time also for iavf, still the only
>> obvious candidates to look deeper in are two commits by Ben:
>> 2fd5e433cd26 ("ice: Accumulate HW and Netdev statistics over reset")
>
> I believe that I have found an issue in this commit, I will spin off
> a fix soon (will go through our usual process defined at Intel "Network"
> group). I will CC you for our internal review too (if only to give
> a chance of earlier testing).
>
>> 288ecf491b16 ("ice: Accumulate ring statistics over reset")
>>
>
> [...] 


Splendid! Thanks very much.

Regards


Christian


--------------D0VnS0HyatDE1h0oa01Q03eC
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: 7bit

<!DOCTYPE html>
<html>
  <head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
  </head>
  <body>
    <div class="moz-cite-prefix">On 23.02.24 14:58, Przemek Kitszel
      wrote:</div>
    <blockquote type="cite"
      cite="mid:fdeefe2c-d91a-4b4f-9b1b-7f592394aab3@intel.com">
      <blockquote type="cite" style="color: #007cff;">[Ben changes]
        <br>
        By looking at the commit range, this time also for iavf, still
        the only
        <br>
        obvious candidates to look deeper in are two commits by Ben:
        <br>
        2fd5e433cd26 ("ice: Accumulate HW and Netdev statistics over
        reset")
        <br>
      </blockquote>
      <br>
      I believe that I have found an issue in this commit, I will spin
      off
      <br>
      a fix soon (will go through our usual process defined at Intel
      "Network"
      <br>
      group). I will CC you for our internal review too (if only to give
      <br>
      a chance of earlier testing).
      <br>
      <br>
      <blockquote type="cite" style="color: #007cff;">288ecf491b16
        ("ice: Accumulate ring statistics over reset")
        <br>
        <br>
      </blockquote>
      <br>
      [...]
    </blockquote>
    <p><br>
      Splendid! Thanks very much.<br>
      <br>
    </p>
    <p>Regards</p>
    <p><br>
    </p>
    <p>Christian<br>
    </p>
    <br>
  </body>
</html>

--------------D0VnS0HyatDE1h0oa01Q03eC--
