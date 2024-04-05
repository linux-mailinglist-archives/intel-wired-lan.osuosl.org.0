Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id ACFE689A480
	for <lists+intel-wired-lan@lfdr.de>; Fri,  5 Apr 2024 21:02:13 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 574B941D81;
	Fri,  5 Apr 2024 19:02:12 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id EDPQFnionblu; Fri,  5 Apr 2024 19:02:11 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.34; helo=ash.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 53BC541D85
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1712343731;
	bh=YCydaye7fGEguRI4B7g0/kq2YLpbPdSprOIVnhlJHDQ=;
	h=Date:To:References:From:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=a32eP9n0sb0Gr/AiouZtPTmhSPQlAgKKnsJ3fMYZkkZWodX7DzrADK/e+fMf95gt4
	 kgTMEbAtipjKlzCwyyrjADo2gVkcJr4IlApyZMPb5RsP8PhC4ABR+7fi54GEaO6qVB
	 tSBSRqE9FrDpBTF2yprxRWcIGOL4rk5JatjKJRcr45B2RJrJS3VmG4hZStBwxiYDD9
	 xdYTfQMMf12i2w+1Q+sbFHeGdPxExLNhTWD3Jk344/PcsJH8mP9r0U5tlATj/zuA2p
	 dKbZpZ9XHgl65B1yMmUqv8LjhKeRZEmWhdX2+C81YLI05UCh4c9mD57QrWWSFvbbjK
	 5jLhjzlXCFL4w==
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id 53BC541D85;
	Fri,  5 Apr 2024 19:02:11 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 32F8A1BF5E0
 for <intel-wired-lan@lists.osuosl.org>; Fri,  5 Apr 2024 19:02:09 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 1D9C541D7C
 for <intel-wired-lan@lists.osuosl.org>; Fri,  5 Apr 2024 19:02:09 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id cZt-CPRveYow for <intel-wired-lan@lists.osuosl.org>;
 Fri,  5 Apr 2024 19:02:03 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom;
 client-ip=2a00:1450:4864:20::633; helo=mail-ej1-x633.google.com;
 envelope-from=hkallweit1@gmail.com; receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp4.osuosl.org 0E72141D85
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 0E72141D85
Received: from mail-ej1-x633.google.com (mail-ej1-x633.google.com
 [IPv6:2a00:1450:4864:20::633])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 0E72141D85
 for <intel-wired-lan@lists.osuosl.org>; Fri,  5 Apr 2024 19:02:02 +0000 (UTC)
Received: by mail-ej1-x633.google.com with SMTP id
 a640c23a62f3a-a51b4032ac7so15574266b.0
 for <intel-wired-lan@lists.osuosl.org>; Fri, 05 Apr 2024 12:02:02 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1712343721; x=1712948521;
 h=content-transfer-encoding:in-reply-to:autocrypt:from
 :content-language:references:cc:to:subject:user-agent:mime-version
 :date:message-id:x-gm-message-state:from:to:cc:subject:date
 :message-id:reply-to;
 bh=YCydaye7fGEguRI4B7g0/kq2YLpbPdSprOIVnhlJHDQ=;
 b=b3X7O5zw8+MwE1DBJqhRrnqsf10dvQzIW2QCHtf0f8q9x9z6+7byWUYjXFqQYDGydA
 SNolxR6JZbeZzRNQiOD7SjR96WQVT/GdDqvDBggz7ryYuAbjXLxvH8McaetoY9w+ZI3d
 WNXFAZ9N0c3tnalt1rqth5CWD3OEi4Ph3Vf5NJmJzvneHqKwTePLllY5+9Ys/Ye/Rvpj
 yUXQdBJfKv29sRrKYCJ0fzURiuo+4XNPcSg92bW/ysTRY1bDMqsF02f7mbDQdh0a1L7a
 Tq4t/RNCaBNTB2RydbHplWw8pu5kO3QYVa3PYRU9o0vBEsT+KQ1AHJQhyLzKwIOOKvRg
 TE7A==
X-Forwarded-Encrypted: i=1;
 AJvYcCXDJwRJ6Rb7lwnOZw/jm36dXEei/foqiMMZqNhPDSJt37UIDrLu65t6m4wrZrHANK2Jr0MRyjq/yhvZz9WXxTB6MM8ABdfysZa1Dxg7Q4bVhw==
X-Gm-Message-State: AOJu0Ywq83CVoPV4entGBblpmDqKiUaqlNEHORHJDpWvzdagfWezGXFm
 cK0FJNtmfek64a/PyDtYflqZf/bHiblITwwUEuCkB5v6NSGTpRki
X-Google-Smtp-Source: AGHT+IFeoL4xhfRkglFIcYSiTqZVuyMvRkS/SuSfT8UziayVKARcEsXrAfmsxmzumHkJOo1nyFdlCQ==
X-Received: by 2002:a17:906:eca5:b0:a46:4bd4:df86 with SMTP id
 qh5-20020a170906eca500b00a464bd4df86mr2771600ejb.3.1712343720424; 
 Fri, 05 Apr 2024 12:02:00 -0700 (PDT)
Received: from ?IPV6:2a01:c22:72bb:b200:e0e0:cd27:7a04:5c79?
 (dynamic-2a01-0c22-72bb-b200-e0e0-cd27-7a04-5c79.c22.pool.telefonica.de.
 [2a01:c22:72bb:b200:e0e0:cd27:7a04:5c79])
 by smtp.googlemail.com with ESMTPSA id
 re9-20020a170906d8c900b00a4e6750a358sm1121493ejb.187.2024.04.05.12.01.59
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Fri, 05 Apr 2024 12:02:00 -0700 (PDT)
Message-ID: <b2845d6b-ee0b-4f21-9cac-bdc41393a739@gmail.com>
Date: Fri, 5 Apr 2024 21:01:59 +0200
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
To: Lukas Wunner <lukas@wunner.de>
References: <CAEhC_B=ksywxCG_+aQqXUrGEgKq+4mqnSV8EBHOKbC3-Obj9+Q@mail.gmail.com>
 <Zg_MOG1OufptoRph@wunner.de> <cd9edf12-5241-4366-b376-d5ee8f919903@gmail.com>
 <ZhA5WAYyMQJsAey8@wunner.de>
Content-Language: en-US
From: Heiner Kallweit <hkallweit1@gmail.com>
Autocrypt: addr=hkallweit1@gmail.com; keydata=
 xsFNBF/0ZFUBEAC0eZyktSE7ZNO1SFXL6cQ4i4g6Ah3mOUIXSB4pCY5kQ6OLKHh0FlOD5/5/
 sY7IoIouzOjyFdFPnz4Bl3927ClT567hUJJ+SNaFEiJ9vadI6vZm2gcY4ExdIevYHWe1msJF
 MVE4yNwdS+UsPeCF/6CQQTzHc+n7DomE7fjJD5J1hOJjqz2XWe71fTvYXzxCFLwXXbBiqDC9
 dNqOe5odPsa4TsWZ09T33g5n2nzTJs4Zw8fCy8rLqix/raVsqr8fw5qM66MVtdmEljFaJ9N8
 /W56qGCp+H8Igk/F7CjlbWXiOlKHA25mPTmbVp7VlFsvsmMokr/imQr+0nXtmvYVaKEUwY2g
 86IU6RAOuA8E0J5bD/BeyZdMyVEtX1kT404UJZekFytJZrDZetwxM/cAH+1fMx4z751WJmxQ
 J7mIXSPuDfeJhRDt9sGM6aRVfXbZt+wBogxyXepmnlv9K4A13z9DVLdKLrYUiu9/5QEl6fgI
 kPaXlAZmJsQfoKbmPqCHVRYj1lpQtDM/2/BO6gHASflWUHzwmBVZbS/XRs64uJO8CB3+V3fa
 cIivllReueGCMsHh6/8wgPAyopXOWOxbLsZ291fmZqIR0L5Y6b2HvdFN1Xhc+YrQ8TKK+Z4R
 mJRDh0wNQ8Gm89g92/YkHji4jIWlp2fwzCcx5+lZCQ1XdqAiHQARAQABzSZIZWluZXIgS2Fs
 bHdlaXQgPGhrYWxsd2VpdDFAZ21haWwuY29tPsLBjgQTAQgAOBYhBGxfqY/yOyXjyjJehXLe
 ig9U8DoMBQJf9GRVAhsDBQsJCAcCBhUKCQgLAgQWAgMBAh4BAheAAAoJEHLeig9U8DoMSycQ
 AJbfg8HZEK0ljV4M8nvdaiNixWAufrcZ+SD8zhbxl8GispK4F3Yo+20Y3UoZ7FcIidJWUUJL
 axAOkpI/70YNhlqAPMsuudlAieeYZKjIv1WV5ucNZ3VJ7dC+dlVqQdAr1iD869FZXvy91KhJ
 wYulyCf+s4T9YgmLC6jLMBZghKIf1uhSd0NzjyCqYWbk2ZxByZHgunEShOhHPHswu3Am0ftt
 ePaYIHgZs+Vzwfjs8I7EuW/5/f5G9w1vibXxtGY/GXwgGGHRDjFM7RSprGOv4F5eMGh+NFUJ
 TU9N96PQYMwXVxnQfRXl8O6ffSVmFx4H9rovxWPKobLmqQL0WKLLVvA/aOHCcMKgfyKRcLah
 57vGC50Ga8oT2K1g0AhKGkyJo7lGXkMu5yEs0m9O+btqAB261/E3DRxfI1P/tvDZpLJKtq35
 dXsj6sjvhgX7VxXhY1wE54uqLLHY3UZQlmH3QF5t80MS7/KhxB1pO1Cpcmkt9hgyzH8+5org
 +9wWxGUtJWNP7CppY+qvv3SZtKJMKsxqk5coBGwNkMms56z4qfJm2PUtJQGjA65XWdzQACib
 2iaDQoBqGZfXRdPT0tC1H5kUJuOX4ll1hI/HBMEFCcO8++Bl2wcrUsAxLzGvhINVJX2DAQaF
 aNetToazkCnzubKfBOyiTqFJ0b63c5dqziAgzsFNBF/0ZFUBEADF8UEZmKDl1w/UxvjeyAeX
 kghYkY3bkK6gcIYXdLRfJw12GbvMioSguvVzASVHG8h7NbNjk1yur6AONfbUpXKSNZ0skV8V
 fG+ppbaY+zQofsSMoj5gP0amwbwvPzVqZCYJai81VobefTX2MZM2Mg/ThBVtGyzV3NeCpnBa
 8AX3s9rrX2XUoCibYotbbxx9afZYUFyflOc7kEpc9uJXIdaxS2Z6MnYLHsyVjiU6tzKCiVOU
 KJevqvzPXJmy0xaOVf7mhFSNQyJTrZpLa+tvB1DQRS08CqYtIMxRrVtC0t0LFeQGly6bOngr
 ircurWJiJKbSXVstLHgWYiq3/GmCSx/82ObeLO3PftklpRj8d+kFbrvrqBgjWtMH4WtK5uN5
 1WJ71hWJfNchKRlaJ3GWy8KolCAoGsQMovn/ZEXxrGs1ndafu47yXOpuDAozoHTBGvuSXSZo
 ythk/0EAuz5IkwkhYBT1MGIAvNSn9ivE5aRnBazugy0rTRkVggHvt3/7flFHlGVGpBHxFUwb
 /a4UjJBPtIwa4tWR8B1Ma36S8Jk456k2n1id7M0LQ+eqstmp6Y+UB+pt9NX6t0Slw1NCdYTW
 gJezWTVKF7pmTdXszXGxlc9kTrVUz04PqPjnYbv5UWuDd2eyzGjrrFOsJEi8OK2d2j4FfF++
 AzOMdW09JVqejQARAQABwsF2BBgBCAAgFiEEbF+pj/I7JePKMl6Fct6KD1TwOgwFAl/0ZFUC
 GwwACgkQct6KD1TwOgxUfg//eAoYc0Vm4NrxymfcY30UjHVD0LgSvU8kUmXxil3qhFPS7KA+
 y7tgcKLHOkZkXMX5MLFcS9+SmrAjSBBV8omKoHNo+kfFx/dUAtz0lot8wNGmWb+NcHeKM1eb
 nwUMOEa1uDdfZeKef/U/2uHBceY7Gc6zPZPWgXghEyQMTH2UhLgeam8yglyO+A6RXCh+s6ak
 Wje7Vo1wGK4eYxp6pwMPJXLMsI0ii/2k3YPEJPv+yJf90MbYyQSbkTwZhrsokjQEaIfjrIk3
 rQRjTve/J62WIO28IbY/mENuGgWehRlTAbhC4BLTZ5uYS0YMQCR7v9UGMWdNWXFyrOB6PjSu
 Trn9MsPoUc8qI72mVpxEXQDLlrd2ijEWm7Nrf52YMD7hL6rXXuis7R6zY8WnnBhW0uCfhajx
 q+KuARXC0sDLztcjaS3ayXonpoCPZep2Bd5xqE4Ln8/COCslP7E92W1uf1EcdXXIrx1acg21
 H/0Z53okMykVs3a8tECPHIxnre2UxKdTbCEkjkR4V6JyplTS47oWMw3zyI7zkaadfzVFBxk2
 lo/Tny+FX1Azea3Ce7oOnRUEZtWSsUidtIjmL8YUQFZYm+JUIgfRmSpMFq8JP4VH43GXpB/S
 OCrl+/xujzvoUBFV/cHKjEQYBxo+MaiQa1U54ykM2W4DnHb1UiEf5xDkFd4=
In-Reply-To: <ZhA5WAYyMQJsAey8@wunner.de>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=gmail.com; s=20230601; t=1712343721; x=1712948521; darn=lists.osuosl.org;
 h=content-transfer-encoding:in-reply-to:autocrypt:from
 :content-language:references:cc:to:subject:user-agent:mime-version
 :date:message-id:from:to:cc:subject:date:message-id:reply-to;
 bh=YCydaye7fGEguRI4B7g0/kq2YLpbPdSprOIVnhlJHDQ=;
 b=dAiFsZmCPQWP+hdXLL0QWdowChoaIaGWm5rjYbQXmy6P4aUboW+GIc2vAotsFW9IKi
 WAdxQ3XiJJxc0iiRxtidrhMckic0m6QcBV8cLoQ6GJIGu1N1rbsQCZryzoWmEbI1nQ4a
 lfF8JPaia3FV8jC569e+lrXVr/9TtVYsQ8hKimj4TjtIQgcJ7mBHTFW18on3ESibjaZr
 RU/2Hsiik1YIXEQ9UMUyo2NW1sUevVntOCq8d9ClnpM66rYgHsAMKpy+qyI942RtJFfQ
 tWCdcnQo7wpeeLWgtiu0Mar6SCbyhgIVObyg7SGaCkGR7ryq4s6kdEwxu5gz8NcSYrYc
 dhiw==
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=gmail.com
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=gmail.com header.i=@gmail.com header.a=rsa-sha256
 header.s=20230601 header.b=dAiFsZmC
Subject: Re: [Intel-wired-lan] Deadlock in pciehp on dock disconnect
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
Cc: Kurt Kanzenbach <kurt@linutronix.de>, Roman Lozko <lozko.roma@gmail.com>,
 Dave Hansen <dave.hansen@linux.intel.com>, linux-pci@vger.kernel.org,
 Christian Marangi <ansuelsmth@gmail.com>, Eric Dumazet <edumazet@google.com>,
 netdev@vger.kernel.org, Tony Nguyen <anthony.l.nguyen@intel.com>,
 Sean Christopherson <seanjc@google.com>, Bjorn Helgaas <bhelgaas@google.com>,
 Jakub Kicinski <kuba@kernel.org>, Paolo Abeni <pabeni@redhat.com>,
 "David S. Miller" <davem@davemloft.net>, intel-wired-lan@lists.osuosl.org
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

On 05.04.2024 19:48, Lukas Wunner wrote:
> On Fri, Apr 05, 2024 at 03:31:34PM +0200, Heiner Kallweit wrote:
>> On 05.04.2024 12:02, Lukas Wunner wrote:
>>> On Fri, Apr 05, 2024 at 11:14:01AM +0200, Roman Lozko wrote:
>>>> Hi, I'm using HP G4 Thunderbolt docking station, and recently (?)
>>>> kernel started to "partially" deadlock after disconnecting the dock
>>>> station. This results in inability to turn network interfaces on or
>>>> off, system can't reboot, `sudo` does not work (guess because it uses
>>>> DNS).
>>>
>>> unregister_netdev() acquires rtnl_lock(), indirectly invokes
>>> netdev_trig_deactivate() upon unregistering some LED, thereby
>>> calling unregister_netdevice_notifier(), which tries to
>>> acquire rtnl_lock() again.
>>>
>>> From a quick look at the source files involved, this doesn't look
>>> like something new, though I note LED support for igc was added
>>> only recently with ea578703b03d ("igc: Add support for LEDs on
>>> i225/i226"), which went into v6.9-rc1.
>>
>> It's unfortunate that the device-managed LED is bound to the netdev device.
>> Wouldn't binding it to the parent (&pdev->dev) solve the issue?
> 
> I'm guessing igc commit ea578703b03d copy-pasted from r8169 commit
> be51ed104ba9 ("r8169: add LED support for RTL8125/RTL8126") because
> that driver has exactly the same problem. :)
> 
Right, just tested it for r8169 and got a similar lockdep error.

> Roman, does the below patch fix the issue?
> 
> Note that just changing the devm_led_classdev_register() call isn't
> sufficient:  I'm changing the devm_kcalloc() in igc_led_setup() as well
> to avoid a use-after-free (memory would already get freed on netdev
> unregister but led a little later on pdev unbind).
> 
> -- >8 --
> 
> diff --git a/drivers/net/ethernet/intel/igc/igc_leds.c b/drivers/net/ethernet/intel/igc/igc_leds.c
> index bf240c5..0b78c30 100644
> --- a/drivers/net/ethernet/intel/igc/igc_leds.c
> +++ b/drivers/net/ethernet/intel/igc/igc_leds.c
> @@ -257,13 +257,13 @@ static void igc_setup_ldev(struct igc_led_classdev *ldev,
>  	led_cdev->hw_control_get = igc_led_hw_control_get;
>  	led_cdev->hw_control_get_device = igc_led_hw_control_get_device;
>  
> -	devm_led_classdev_register(&netdev->dev, led_cdev);
> +	devm_led_classdev_register(&adapter->pdev->dev, led_cdev);
>  }
>  
>  int igc_led_setup(struct igc_adapter *adapter)
>  {
>  	struct net_device *netdev = adapter->netdev;
> -	struct device *dev = &netdev->dev;
> +	struct device *dev = &adapter->pdev->dev;
>  	struct igc_led_classdev *leds;
>  	int i;
>  
> 

